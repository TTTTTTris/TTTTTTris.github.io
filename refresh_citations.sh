#!/usr/bin/env bash
# Refresh Google Scholar citation data and publish it to the
# `google-scholar-stats` branch, which the homepage reads via jsDelivr.
#
# The GitHub Action that is meant to do this cannot: Google Scholar refuses
# datacenter IPs, so the runner is blocked. A residential IP is not, which is
# why this runs here instead.
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
venv="${here}/.dev/gsvenv"
py="${venv}/Scripts/python.exe"
[ -x "$py" ] || py="${venv}/bin/python"

if [ ! -x "$py" ]; then
  echo ">> creating venv"
  python -m venv "$venv"
  [ -x "${venv}/Scripts/python.exe" ] && py="${venv}/Scripts/python.exe" || py="${venv}/bin/python"
  "$py" -m pip install --quiet --upgrade pip
  "$py" -m pip install --quiet -r "${here}/google_scholar_crawler/requirements.txt"
fi

echo ">> fetching Scholar data"
cd "${here}/google_scholar_crawler"
GOOGLE_SCHOLAR_ID="${GOOGLE_SCHOLAR_ID:-lUdGlCkAAAAJ}" "$py" main.py > /dev/null

"$py" - <<'PY'
import json
d = json.load(open('results/gs_data.json', encoding='utf-8'))
print(f"   {d['name']}: {d['citedby']} citations, {len(d['publications'])} publications")
PY

if [ "${1:-}" = "--no-push" ]; then
  echo ">> --no-push given; results/ written, nothing pushed"
  exit 0
fi

echo ">> publishing to google-scholar-stats"
remote="$(git -C "$here" remote get-url origin)"
cd results
rm -rf .git
git init --quiet
git add ./*.json
git -c user.name="Jiayi Tian" -c user.email="jiayi_tian@ucsb.edu" \
    commit --quiet -m "Updated Citation Data"
git push --quiet "$remote" HEAD:google-scholar-stats --force
rm -rf .git
echo ">> done. jsDelivr picks it up within a few minutes."
