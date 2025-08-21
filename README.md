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
- Project Name：MATLAB 2024a
- Project Home Page：The official MathWorks website is the main resource for MATLAB. Usually, it can be accessed at https://www.mathworks.com/
- Archived Version：There is no publicly available DOI or general repository identifier for MATLAB 2024a. The version is officially identified as "MATLAB 2024a" through MathWorks' release announcements and the software itself. Multiple build versions exist within the 2024a release, such as v24.1.0.2628055, v24.1.0.2578822 (update 2), v24.1.0.2568132 (update 1), which can be identified on the official download pages and within the software installation process.
-  Operating System(s) Compatibility
-- **Windows**: Compatible with 64 - bit Windows 11, Windows 10 (21H2 or higher versions), and Windows Server 2022.
-- **macOS**: Supports both Intel - based and Apple Silicon (M - series) chips. Compatible with macOS Monterey (12), macOS Big Sur (11.6), and macOS Catalina (10.15.7).
-- **Linux**: Compatible with Ubuntu 20.04 LTS, Ubuntu 22.04 LTS, Ubuntu 24.04 LTS; Red Hat Enterprise Linux 7.7 - 7.9, Red Hat Enterprise Linux 8, Red Hat Enterprise Linux 9; CentOS 7.7 - 7.8, CentOS 8, CentOS 9. Other Linux distributions with kernel version 3.10 or higher and glibc version 2.17 or higher may also be able to run MATLAB 2024a, but they may receive limited technical support.
- Programming Language：The core of MATLAB is developed primarily in the C language. It is integrated with its own proprietary scripting language, which uses the.m file syntax. This language is designed specifically for numerical computing, data analysis, algorithm development, and more, allowing for efficient matrix and array operations with a syntax that is relatively intuitive for engineers and scientists.
- License：MATLAB 2024a is distributed under a proprietary commercial license, which means it is non - open - source software. The software's usage rights and terms are strictly defined by MathWorks' licensing agreements.
- Restrictions for Non - Academics：All users, including non - academic users, are required to purchase and obtain an authorized license through MathWorks' official channels in order to use MATLAB 2024a legally. The usage rights are subject to the terms and conditions of the purchased license. These terms may include limitations on the number of installations, usage scenarios (e.g., personal, commercial, research), and the duration of the license validity. 
