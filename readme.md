![optimal_decision_trees](img/odt.png)

## Objective

To investigate the performance of GLM, Optimal Decision Trees and XGBoost algorithms on the Allstate Claims Severity Kaggle challenge.

## Contents

This repository contains:

- *data* - datasets for the analysis
- *evaluation* - summary statistics
- *glm* - code to build model 
- *img* - images
- *notebooks* - workings for learning and development
- *optimal_decision_trees* - code to build model
- *outputs* - results
- *xgb* - code to build model

## Data

Each row in this dataset represents an insurance claim. Variables prefaced with 'cat' are categorical, while those prefaced with 'cont' are continuous. The objective is to predict the value for the 'loss' column. <br>

The challenge is provided in such a way that there train and test datasets. 

The train dataset has been partitioned such that: 

- modelling
- holdout

The test dataset is used for independent scoring on Kaggle.

For example:

![optimal_decision_trees](img/data_preview.png)

## Feature Engineering

Basic feature engineering was used amongst all models including response transformation and frequency binning.

## Method

Build three models:

GLM - forward selection

XGBoost - bayseian hyperpot

ODT - max depth 9

## Results

Compare results using mae, X-graph and Gini

Summary of usage

## Future Developments

Developments to investigate / consider:

- additional feature engineering steps, e.g. frequency binning
- modularise code away from notebooks
- Better hypter opt of odt 
- GPU

## Author
Ben Turner with a special thanks to interpretable.ai for allowing me to trial their interpretableai package for personal use.
Q4 2020