# Polynomial Regression 

# Imporing the dataset
dataset =  read.csv('Position_Salaries.csv')
dataset = dataset[2:3]

# Fitting Linear Regression to the dataset
lin_reg =lm(formula = Salary ~ .,
            data = dataset)

# Fitting polynomial Regression to the dataset
dataset$Level2= dataset$Level^2
dataset$Level3= dataset$Level^3
dataset$Level4= dataset$Level^4
poly_reg =lm(formula = Salary ~ .,
            data = dataset)
# in console summary(lin_reg)



# Visualising the Linear Regression result
#install.packages('ggplot2')
library(ggplot2)
ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary),
             colour = 'red') +
  geom_line(aes(x = dataset$Level, y = predict(lin_reg, newdata = dataset)),
            colour = 'blue') +
  ggtitle('Linear Regression') +
  xlab('Level') +
  ylab('Salary')

# Visualising the polynomial Regression result
ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary),
             colour = 'red') +
  geom_line(aes(x = dataset$Level, y = predict(poly_reg, newdata = dataset)),
            colour = 'blue') +
  ggtitle('Polynomial Regression') +
  xlab('Level') +
  ylab('Salary')