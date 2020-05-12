# Support Vector Regression

# Imporing the dataset
dataset =  read.csv('Position_Salaries.csv')
dataset = dataset[2:3]

# Fitting Support Vector  Regression to the dataset
install.packages('e1071')
library(e1071)
regressor = svm(formula = Salary ~ .,
                data = dataset,
                type = 'eps-regression')





