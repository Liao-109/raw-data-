# raw-data-
This repository hosts the raw data and supplementary materials for the research paper "Sustainable development: An investigation of the factors influencing pedestrian-motor vehicle collisions in relation to the road operating environment". This dataset originates from the Sichuan Xihua Transportation Forensic Identification Center in China. In China, the head of this institution has exclusive rights to the transportation forensic identification accident dataset.
# Project Overview
## Research Theme
Exploring the key factors influencing pedestrian injury severity in pedestrian-motor vehicle collisions, with a specific focus on the interaction between road operating environment (e.g., pavement materials, road alignment) and collision outcomes. The study combines a Multinomial Logit (MNL) model for quantitative analysis and SHAP (SHapley Additive exPlanations) for model interpretation to provide insights for sustainable transportation safety.
## Objectives
- Identify critical factors affecting pedestrian injury severity (fatal, emergency/hospitalization, minor injuries).
- Quantify the impact of variables such as pedestrian age, driving experience, accident time, and road conditions.
- Visualize feature importance and interactions using SHAP to enhance model interpretability.
# Dataset Details
## Source
The data was extracted from China’s National Vehicle Accident In-depth Survey System (NAIS) and covers pedestrian-motor vehicle collisions in China from 2018 to 2022.
## Content
The dataset includes 1,320 valid collision records after data cleaning, with 17 categories of influencing factors categorized into:
- Human factors: Pedestrian age/gender, driver age/gender, driving experience, speeding behavior.
- Temporal factors: Accident time (day/night/dusk).
- Road operating environment factors: Road type (ordinary road/intersection/hazardous road), road alignment (flat/curve/slope), pavement material (asphalt/concrete/sand), road surface conditions (dry/wet/polluted), weather.
- Vehicle factors: Vehicle age.
## Data Files
- raw data.xlsx: Raw dataset with all variables and collision records.
- Supplementary visualization materials (20250328)：Stata/MP 18.0.
## Key Variables
- Dependent Variable: Injury Severity	Categorized into 3 levels: Fatal (FI), Emergency/Hospitalization (SI), Minor Injuries (MI).
- Human Factors： Pedestrian Age, Driving Experience, Speeding	Continuous/discrete variables capturing demographic and behavioral traits.
- Road Environment: Pavement Material, Road Alignment, Surface Condition	Categorical variables describing road infrastructure and operating conditions.
- Temporal Factors: Accident Time	Categorized into day, night, or dusk.
# Analysis Methods
The dataset supports the following analytical approaches (as used in the research):
- MNL Model: Quantifies the impact of each factor on injury severity using relative risk ratios (RRR).
- SHAP Analysis: Visualizes feature importance and interactions, particularly for road operating environment factors (e.g., pavement material-road alignment interactions).
# Usage Guidelines
## Data Access
The dataset is available in raw data.xlsx for non-commercial research purposes. Users must comply with NAIS data usage regulations and cite the original research when using this data.
## Recommended Tools
- Statistical analysis: Stata/MP 18.0 (for MNL model estimation).
- Visualization: Python (Matplotlib, Seaborn) or MATLAB 2024a.
- SHAP implementation: Python’s shap library (version ≥ 0.40.0).
# Related notes:
- As the authors are all from China, some of the code contains Chinese comments. We apologize for any inconvenience this may cause.
- The submitted raw data has been converted and polished, and may differ slightly from the names used in the authors' training models, but the basic data remains consistent.
# Software：
- Project name: Stata/MP 18.0
- Project home page: https://www.stata.com/
- Archived version: No publicly available DOI or general repository identifier; version identified as "Stata/MP 18.0" by official release
- Operating system(s): Compatible with 64-bit Windows, 64-bit macOS (including Apple Silicon chips), 64-bit Linux
- Programming language: Core developed primarily in C language, integrated with proprietary scripting language (.do file syntax)
- License: Proprietary commercial license (non-open source software)
- Any restrictions to use by non-academics: All users (including non-academic) must purchase and obtain an authorized license through Stata's official channels to use the software legally. Usage rights are subject to the terms of the purchased license.
- Project name: MATLAB 2024a
- Project home page: https://www.mathworks.com/products/matlab.html
- Archived version: No publicly available DOI or general repository identifier; version identified as "MATLAB 2024a" by official release
- Operating system(s): Compatible with 64-bit Windows, 64-bit macOS (including Apple Silicon chips), 64-bit Linux
- Programming language: Core developed primarily in C, C++, and Java, integrated with proprietary MATLAB scripting language (.m file syntax)
- License: Proprietary commercial license (non-open source software)
- Any restrictions to use by non-academics: All users (including non-academic) must purchase and obtain an authorized license through MathWorks' official channels to use the software legally. Usage rights are subject to the terms of the purchased license, which may vary based on user type (individual, academic, commercial) and license tier.
- Project name: Python
- Project home page: https://www.python.org/
- Archived version: Multiple versions available with DOIs through Zenodo; latest stable version identified as "Python 3.12.4" (as of current release)
- Operating system(s): Compatible with 64-bit and 32-bit Windows, 64-bit and 32-bit macOS (including Apple Silicon chips), 64-bit and 32-bit Linux, as well as other Unix-like systems
- Programming language: Core implemented primarily in C, with additional components in Python itself and other languages
- License: Python Software Foundation License (open source software, permissive)
- Any restrictions to use by non-academics: No restrictions for non-academic use. The software is freely available for download, use, modification, and distribution by all users, including commercial entities, in accordance with the terms of the Python Software Foundation License.
