# My Projects

This repository contains most of my past projects which focused on different domains such as deep learning, market research, optimization problems, and VBA scripts.

## Folder Structure

### Python Projects

#### 1. Deep Learning and Reinforcement Learning in Assembly Lines

This folder contains code and documentation for analyzing and optimizing assembly line balancing problems using deep learning and reinforcement learning techniques.

- **SBF1 data set**: Retrieved from Scholl et al. (2013).
- **NN-RNN-LSTM.ipynb**: Full report on building and training three deep learning models (NN, RNN, LSTM) for the setup assembly line balancing problem.
- **DQN.ipynb**: Exploration of assembly line reconfiguration using Deep Q-learning.
- 
#### 2. Market Research - Le Bleu Soleil

This folder contains code and data used to analyze market research data for the Pro-Act: Le Bleu Soleil project.

- **data.xlsx**: Primary dataset used for correlation and descriptive statistics analysis.
- **data2.xlsx**: Secondary dataset used for ranking decision-making factors.
- **Correlation.ipynb**: Analyzes data from `data.xlsx` to identify correlations between variables.
- **Descriptive statistics.ipynb**: Provides descriptive statistics for the data in `data.xlsx`.
- **Ranking decision-making factors.ipynb**: Analyzes data from `data2.xlsx` to rank decision-making factors.

#### 3. Distribution Problem - Lotus House

This folder contains code and documentation for solving the distribution problem for the Lotus House project.

- **Distribution problem.ipynb**: Creates and solves the distribution model.
- **Problem Description.pdf**: Document detailing the problem description, mathematical model, inputs, implementation, and results.

### VBA Projects

#### 1. 2021

This folder contains VBA scripts. Currently I only upload the projects for 2021, because 2022 and 2023 contains sensitive data.

- **RenameSortTool.bas**: VBA code for renaming and sorting files in any folder. The user can pick the source folder and destination folder.
- **ZipTool.bas**: VBA code for zipping all the files which have the same first 10 characters in the file name. The user can pick the source folder.
- **ECCNtool.xlsm**: A sample `.XLSM file` for testing.

#### 2. 2022

Not available yet.

#### 3. 2023

Not available yet.

## Usage

1. Clone the repository:
    ```bash
    git clone <repository_url>
    ```
2. Navigate to the project directory:
    ```bash
    cd python/ or cd vba/
    ```
3. Open the relevant subfolder and notebooks or scripts to run the analyses.

## Requirements

### Python Projects

- Python 3.x
- Jupyter Notebook or JupyterLab
- pandas
- numpy
- tensorflow
- keras
- matplotlib
- sklearn
- docplex

Install the required packages using:
```bash
pip install pandas numpy tensorflow keras matplotlib sklearn docplex
