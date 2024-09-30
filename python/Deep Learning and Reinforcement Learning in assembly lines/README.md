# Deep Learning and Reinforcement Learning in Assembly Lines

This repository contains code and documentation for analyzing and optimizing assembly line balancing problems using deep learning and reinforcement learning techniques.

## Data Set
The SBF1 data set of the setup assembly line balancing problem is retrieved from Scholl et al. (2013)
Link: https://assembly-line-balancing.de/sualbsp/data-set-of-scholl-et-al-2013/

## Folder Structure

- `NN-RNN-LSTM.ipynb`: Full report on building and analyzing three deep learning models (NN, RNN, LSTM) for the assembly line balancing problem.
- `DQN.ipynb`: Exploration of assembly line reconfiguration using Deep Q-learning.

## NN-RNN-LSTM.ipynb Report Contents

1. **Main Objective**: Analyze the SBF1 data set to address the setup assembly line balancing problem.
2. **Data Set Description and Attributes**: Detailed description of the SBF1 data set and its attributes.
3. **Data Exploration and Processing**: Steps for exploring and processing the data for training deep learning models.
4. **Summary of Training Variations**: Overview of training different deep learning models (NN, RNN, LSTM).
5. **Model Comparison**: Comparison of models based on training loss and performance, along with recommendations.
6. **Key Findings and Insights**: Summary of key findings and insights from the analysis.
7. **Suggestion for Next Step**: Recommendations for future work and improvements.

## DQN.ipynb Details

- **Objective**: Integrate Deep Q-learning to explore assembly line reconfiguration.
- **Functionality**: Implementation of Deep Q-learning algorithm to optimize assembly line configurations.

## Usage

1. Clone the repository:
    ```bash
    git clone <repository_url>
    ```
2. Navigate to the project directory:
    ```bash
    cd python/Deep\ Learning\ and\ Reinforcement\ Learning\ in\ assembly\ lines/
    ```
3. Open the notebooks in Jupyter Notebook or JupyterLab to run the analyses.

## Requirements

- Python 3.x
- Jupyter Notebook or JupyterLab
- pandas
- numpy
- tensorflow
- keras
- matplotlib
- sklearn

Install the required packages using:
```bash
pip install pandas numpy tensorflow keras matplotlib sklearn
