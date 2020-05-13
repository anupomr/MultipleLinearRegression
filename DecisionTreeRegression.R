# Decision Tree Regression

# Importing the dataset
dataset = read.csv('Position_Salaries.csv')
dataset = dataset[2:3]


# Fitting Decision Tree  Regression to the dataset
install.packages('rpart')
library(rpart)
regressor = rpart(formula = Salary ~ .,
                  data = dataset)

# Predicting a new result
y_pred = predict(regressor, data.frame(Level = 6.5))

# Visualising the Decision Tree  regression model 
#install.packages('ggplot2')
library(ggplot2)
ggplot()+
  geom_point(aes(X = dataset$Level, y = dataset$Salary),
             color = 'red')+
  geom_line(aes(X = dataset$Level, y = predict(regressor, newdata = dataset)),
            color = 'blue')+
  ggtitle('Decision Tree Regression')+
  xlab('Level')+
  ylab('Salary')