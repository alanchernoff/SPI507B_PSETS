
setwd("C:/Users/19084/Downloads") # you'll have to change this to where you downloaded StateIncome.csv

df <- read.csv('Heart_Disease.csv')

View(df)


#compute a regression for CHOL using AGE as the dependent variable
#replace the xxx with the relevant variable names
regression=lm(xxx~xxx,df)

#Display your results
summary(regression)

#compute a regression for CHOL using AGE,SEX, RBP, and MAX the dependent variables
#replace the xxx with the relevant variable names
regression2=lm(xxx~xxx+xxx+xxx+xxx,df)

#Display 2nd regression results
summary(regression2)
