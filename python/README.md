# Python Projects

This folder contains various Python projects focused on different domains such as deep learning, market research, and optimization problems.

## Folder Structure

### 1. Capstone project: MovieLens 100k Recommender System

This folder contains code and documentation for developing Content-based and Collaborative-filtering based Recommender Systems for the MovieLens 100k data set.

- **EDA.ipynb**: Exploratory data analysis on the data set
- **Unsupervised Learning-user profile based.ipynb**: User profile based recommender system
- **Unsupervised Learning-similarity based.ipynb**: Similarity-based recommender system
- **Unsupervised Learning-clustering based.ipynb**: Clustering-based recommender system
- **Supervised Learning-KNN.ipynb**: KNN-based recommender system
- **Supervised Learning-NMF.ipynb**: NMF-based recommender system
- **Supervised Learning-neural network embedding.ipynb**: Neural network embedding-based recommender system
- **Ranking systems.ipynb**: ranking systems by evaluation metrics (Precision, Recall, F1-Score, RMSE)

### 2. Deep Learning and Reinforcement Learning in Assembly Lines

This folder contains code and documentation for analyzing and optimizing assembly line balancing problems using deep learning and reinforcement learning techniques.

- **SBF1 data set**: Retrieved from Scholl et al. (2013).
- **NN-RNN-LSTM.ipynb**: Full report on building and training three deep learning models (NN, RNN, LSTM) for the setup assembly line balancing problem.
- **DQN.ipynb**: Exploration of assembly line reconfiguration using Deep Q-learning.

### 3. Market Research - Le Bleu Soleil

This folder contains code and data used to analyze market research data for the Pro-Act: Le Bleu Soleil project.

- **data.xlsx**: Primary dataset used for correlation and descriptive statistics analysis.
- **data2.xlsx**: Secondary dataset used for ranking decision-making factors.
- **Correlation.ipynb**: Analyzes data from `data.xlsx` to identify correlations between variables.
- **Descriptive statistics.ipynb**: Provides descriptive statistics for the data in `data.xlsx`.
- **Ranking decision-making factors.ipynb**: Analyzes data from `data2.xlsx` to rank decision-making factors.

### 4. Distribution Problem - Lotus House

This folder contains code and documentation for solving the distribution problem for the Lotus House project.

- **Distribution problem.ipynb**: Creates and solves the distribution model.
- **Problem Description.pdf**: Document detailing the problem description, mathematical model, inputs, implementation, and results.

## Usage

1. Clone the repository:
    ```bash
    git clone <repository_url>
    ```
2. Navigate to the project directory:
    ```bash
    cd python/
    ```
3. Open the relevant subfolder and notebooks in Jupyter Notebook or JupyterLab to run the analyses.

## Requirements

- Python 3.x
- Jupyter Notebook or JupyterLab
- pandas
- numpy
- tensorflow
- keras
- matplotlib
- sklearn
- docplex
- seaborn

Install the required packages using:
```bash
pip install pandas numpy tensorflow keras matplotlib sklearn docplex seaborn

