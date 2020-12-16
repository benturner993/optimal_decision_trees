import pandas as pd

def load_data():

    ''' read train and test datasets '''

    training_df = pd.read_csv('/Users/Ben/Desktop/optimal_decision_trees/data/modelling.csv')
    holdout_df=pd.read_csv('/Users/Ben/Desktop/optimal_decision_trees/data/holdout.csv')
    test_df=pd.read_csv('/Users/Ben/Desktop/optimal_decision_trees/data/test.csv')

    return training_df, holdout_df, test_df