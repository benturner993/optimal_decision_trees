# Code for Julia:
#ln -fs "/Applications/Julia-1.5.app/Contents/Resources/julia/bin/julia" /usr/local/bin/julia
#/Applications/Julia-version.app/Contents/Resources/julia/lib/julia/

library(iai)

# Set current working directory
setwd("/Users/Ben/Desktop/optimal_decision_trees")

# In this example we will use Optimal Classification Trees (OCT) on the banknote authentication 
# dataset. First we load in the data and split into training and test datasets:
df <- read.table("data_banknote_authentication.txt", sep = ",",
                 col.names = c("variance", "skewness", "curtosis", "entropy",
                               "class"))

# Optimal Classification Trees
X <- df[, 1:4]
y <- df[, 5]
split <- iai::split_data("classification", X, y, seed = 1)
train_X <- split$train$X
train_y <- split$train$y
test_X <- split$test$X
test_y <- split$test$y

# We will use a grid_search to fit an optimal_tree_classifier:
grid <- iai::grid_search(
  iai::optimal_tree_classifier(
    random_seed = 1,
  ),
  max_depth = 1:5,
)
iai::fit(grid, train_X, train_y)
iai::get_learner(grid)

# We can make predictions on new data using predict:
iai::predict(grid, test_X)

# We can evaluate the quality of the tree using score with any of the supported loss 
# functions. For example, the misclassification on the training set:
iai::score(grid, train_X, train_y, criterion = "misclassification")

# Or the AUC on the test set:
iai::score(grid, test_X, test_y, criterion = "auc")

# We can also plot the ROC curve on the test set:
iai::roc_curve(grid, test_X, test_y)

