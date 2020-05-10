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
lin_reg =lm(formula = Salary ~ .,
            data = dataset)
# in console summary(lin_reg)