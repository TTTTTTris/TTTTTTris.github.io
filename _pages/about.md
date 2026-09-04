---
permalink: /
title: ""
excerpt: ""
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

<span class='anchor' id='about-me'></span>

I am a Ph.D. candidate in Computer Engineering at the **University of California, Santa Barbara** (expected 2027), where I also received my M.S. in Computer Engineering. Before that, I received my B.Eng. in Electrical Engineering from **Nanjing University**.

My research is on **efficient large language model (LLM) training and inference** and **efficient chain-of-thought (CoT) reasoning through algorithm–system co-design**. I work across the stack, from compression algorithms down to the hardware that runs them: model and KV-cache compression, pruning, low-rank decomposition, quantization, early exit, knowledge distillation, speculative decoding and reasoning, and efficient agentic systems. This work has appeared at COLM, MLSys, EACL, EMNLP, ICASSP, and IEEE TCAD, and was developed in part during research internships at **Intel** and a co-op at **AMD-Xilinx**.

You can find my publications on <a href='https://scholar.google.com/citations?user=lUdGlCkAAAAJ'>Google Scholar</a>.

# 🔥 News
- *2026.08*: &nbsp;🎉 *LoRi: Low-Rank Distillation for Implicit Reasoning* accepted to Findings of the Association for Computational Linguistics: **EMNLP 2026**.
- *2026.07*: &nbsp;🎓 Advanced to Ph.D. candidacy in Computer Engineering at **UC Santa Barbara**.
- *2026.07*: &nbsp;🎉 *RankGuide: Tensor-Rank-Guided Routing and Steering for Efficient Reasoning* accepted to the Third Conference on Language Modeling (**COLM 2026**).
- *2026.02*: &nbsp;🎉 *SkipKV: Selective Skipping of KV Generation and Storage for Efficient Inference with Large Reasoning Models* accepted to the Ninth Annual Conference on Machine Learning and Systems (**MLSys 2026**).
- *2026.01*: &nbsp;🎉 *FLAT-LLM: Fine-grained Low-rank Activation Space Transformation for Large Language Model Compression* accepted to Findings of the Association for Computational Linguistics: **EACL 2026**.
- *2026.01*: &nbsp;🎉 *FETTA: Flexible and Efficient Hardware Accelerator for Tensorized Neural Network Training* published in **IEEE TCAD**.
- *2025.09*: &nbsp;🎓 Received my M.S. in Computer Engineering from **UC Santa Barbara**.
- *2025.08*: &nbsp;🎉 *Ultra Memory-Efficient On-FPGA Training of Transformers via Tensor-Compressed Optimization* accepted to **IEEE TCAD**.
- *2025.06*: &nbsp;🛠️ Started my summer research internship at **Intel**, Hillsboro, OR.
- *2024.06*: &nbsp;🛠️ Started my summer research internship at **Intel**, Hillsboro, OR.

# 📝 Publications 

<!-- TODO: replace images/500x300.png with a teaser figure for each paper. -->

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">COLM 2026</div><img src='images/rankguide.png' alt="sym" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[RankGuide: Tensor-Rank-Guided Routing and Steering for Efficient Reasoning](https://arxiv.org/abs/2604.16694)

**Jiayi Tian**, Yupeng Su, Ryan Solgi, Souvik Kundu, Zheng Zhang

[**Paper**](https://arxiv.org/abs/2604.16694) \| [**Code**](https://github.com/TTTTTTris/RankGuide.git)
- Leverages tensor-rank signals from hidden states to accelerate large reasoning model inference, yielding up to 1.75× and 1.36× latency benefit over LRM and SoTA collaborative inference while maintaining or improving accuracy.
- A tensor-rank scoring metric on step-level hidden states detects low-quality reasoning steps and selectively routes them to larger models.
</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">MLSys 2026</div><img src='images/skipkv.png' alt="sym" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[SkipKV: Selective Skipping of KV Generation and Storage for Efficient Inference with Large Reasoning Models](https://proceedings.mlsys.org/paper_files/paper/2026/file/45c1f6a8cbf2da59ebf2c802b4f742cd-Paper-Conference.pdf)

**Jiayi Tian**, Seyedarmin Azizi, Yequan Zhao, Erfan Baghaei Potraghloo, Sean McPherson, Sharath Nittur Sridhar, Zhengyang Wang, Zheng Zhang, Massoud Pedram, Souvik Kundu

[**Paper**](https://proceedings.mlsys.org/paper_files/paper/2026/file/45c1f6a8cbf2da59ebf2c802b4f742cd-Paper-Conference.pdf) \| [**Code**](https://github.com/TTTTTTris/SkipKV.git)
- A training-free KV-cache compression framework with sentence-level selective eviction and dynamic thoughts-type control for efficient CoT reasoning in multi-batch serving.
- Up to 26.7% higher accuracy, 1.6× shorter generation, and 1.7× higher throughput vs. SoTA under equal compression.
</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">EACL 2026</div><img src='images/flatllm.png' alt="sym" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[FLAT-LLM: Fine-grained Low-rank Activation Space Transformation for Large Language Model Compression](https://aclanthology.org/2026.findings-eacl.156.pdf)

**Jiayi Tian**, Ryan Solgi, Jinming Lu, Yifan Yang, Hai Li, Zheng Zhang

[**Paper**](https://aclanthology.org/2026.findings-eacl.156.pdf) \| [**Code**](https://github.com/TTTTTTris/FLAT-LLM)
- A training-free, fine-grained compression method that exploits the low-rank structure of the activation space to transform and compress model weights, allocating ranks by greedy redistribution so it drops into existing low-rank compression pipelines.
- 5–10% higher accuracy than SoTA low-rank compression under equal compression on LLaMA-2/3 and Mistral, and 1.68× speedup at 10% compression, with calibration overhead in minutes.
</div>
</div>

- [LoRi: Low-Rank Distillation for Implicit Reasoning](https://arxiv.org/abs/2606.05315), Ryan Solgi, **Jiayi Tian**, Zheng Zhang, **Findings of EMNLP 2026**
- [IAPO: Input Attribution-Aware Policy Optimization for Tool Use in Small Multimodal Agents](https://arxiv.org/abs/2606.11652), Yifan Yang, Zhen Zhang, **Jiayi Tian**, Liyan Tan, Zheng Zhang, **arXiv 2026**
- [FETTA: Flexible and Efficient Hardware Accelerator for Tensorized Neural Network Training](https://arxiv.org/abs/2504.06474), Jinming Lu, **Jiayi Tian**, Hai Li, Ian Young, Zheng Zhang, **IEEE TCAD 2026**
- [Ultra Memory-Efficient On-FPGA Training of Transformers via Tensor-Compressed Optimization](https://ieeexplore.ieee.org/document/11121368), **Jiayi Tian**, Jinming Lu, Hai Li, Xiangwei Wang, Cong (Callie) Hao, Ian Young, Zheng Zhang, **IEEE TCAD 2025**
- [Tensor-Compressed and Fully-Quantized Training of Neural PDE Solvers](https://arxiv.org/abs/2512.09202), Jinming Lu, **Jiayi Tian**, Yequan Zhao, Hai Li, Zheng Zhang, **arXiv 2025**
- [Activation-Informed Pareto-Guided Low-Rank Compression for Efficient LLM/VLM](https://arxiv.org/abs/2510.05544), Ryan Solgi, Parsa Madinei, **Jiayi Tian**, Rupak Swaminathan, Jing Liu, Nathan Susanj, Zheng Zhang, **arXiv 2025**
- [BEBERT: Efficient and Robust Binary Ensemble BERT](https://ieeexplore.ieee.org/document/10096223), **Jiayi Tian**, Chao Fang, Haonan Wang, Zhongfeng Wang, **ICASSP 2023** \| [**Code**](https://github.com/TTTTTTris/BEBERT.git)

## Mentorship
- [Comprehensive Design Space Exploration for Tensorized Neural Network Hardware Accelerators](https://arxiv.org/abs/2511.17971), Jinsong Zhang, Minghe Li, **Jiayi Tian**, Jinming Lu, Zheng Zhang, **arXiv 2025**


# 📖 Educations
- *2023.09 - 2027 (expected)*, **Ph.D. in Computer Engineering**, University of California, Santa Barbara, CA, USA. (GPA 3.93/4.0)
- *2023.09 - 2025.09*, **M.S. in Computer Engineering**, University of California, Santa Barbara, CA, USA. (GPA 3.93/4.0)
- *2019.09 - 2023.06*, **B.Eng. in Electrical Engineering**, Nanjing University, China. (GPA 4.50/5.0)

# 💻 Internships
- *2025.06 - 2025.09*, **Research Intern**, [Intel Corporation](https://www.intel.com/), Hillsboro, OR, USA. Mentor: [Souvik Kundu](https://ksouvik52.github.io/). Proposed SkipKV, a training-free KV-cache compression framework with a dynamic latent thoughts-type steering mechanism for concise and stable reasoning (MLSys 2026).
- *2024.06 - 2024.09*, **Research Intern**, [Intel Corporation](https://www.intel.com/), Hillsboro, OR, USA. Mentor: [Hai Li](https://www.linkedin.com/in/hai-li-1826b740). Built a tensor-compressed Transformer training accelerator on FPGA with a bidirectional tensor contraction scheme, reaching up to 51× memory efficiency and 4× energy efficiency vs. an NVIDIA RTX 3090 (IEEE TCAD 2025).
- *2023.06 - 2023.09*, **Co-Op/Intern**, AMD-Xilinx Technology, Beijing, China. Developed a C++/HLS Transformer training framework with custom tensorized linear layers and nonlinear operators, achieving 30×~52× model size savings for end-to-end Transformer training.

<!-- {% comment %}
  ClustrMaps visitor map -- currently inactive.

  To turn it on:
    1. Go to https://clustrmaps.com/ and register  https://ttttttris.github.io/
    2. It hands you a snippet containing a unique id, e.g.
         src="//clustrmaps.com/map_v2.js?d=AbC1dEfGh2IjK3lMnOpQ4&cl=ffffff&w=a"
    3. Paste that id over YOUR_CLUSTRMAPS_ID below, then delete the two
       comment markers (the line above and the line below the block) so it renders.

# 🗺️ Visitors

<div style="width: 100%; display: flex; justify-content: center; margin-top: 1.5em;">
  <script type="text/javascript" id="clustrmaps" src="//clustrmaps.com/map_v2.js?d=YOUR_CLUSTRMAPS_ID&cl=ffffff&w=a"></script>
</div>
{% endcomment %} -->
