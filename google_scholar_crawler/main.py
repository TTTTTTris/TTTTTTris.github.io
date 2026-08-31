from scholarly import scholarly, ProxyGenerator
import jsonpickle
import json
from datetime import datetime
import os

# Google Scholar refuses datacenter IPs, so a GitHub Actions runner cannot reach
# it directly -- scholarly just retries until the job hits its timeout. Route
# through ScraperAPI when a key is present. Without one this still works from a
# residential IP, which is what a local run uses.
api_key = os.environ.get('SCRAPERAPI_KEY')
if api_key:
    pg = ProxyGenerator()
    if not pg.ScraperAPI(api_key):
        raise SystemExit('ScraperAPI rejected the key in SCRAPERAPI_KEY')
    scholarly.use_proxy(pg)

author: dict = scholarly.search_author_id(os.environ['GOOGLE_SCHOLAR_ID'])
scholarly.fill(author, sections=['basics', 'indices', 'counts', 'publications'])
name = author['name']
author['updated'] = str(datetime.now())
author['publications'] = {v['author_pub_id']:v for v in author['publications']}
print(json.dumps(author, indent=2))
os.makedirs('results', exist_ok=True)
with open(f'results/gs_data.json', 'w') as outfile:
    json.dump(author, outfile, ensure_ascii=False)

shieldio_data = {
  "schemaVersion": 1,
  "label": "citations",
  "message": f"{author['citedby']}",
}
with open(f'results/gs_data_shieldsio.json', 'w') as outfile:
    json.dump(shieldio_data, outfile, ensure_ascii=False)
