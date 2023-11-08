
setwd("C:/Users/19084/Downloads") # you'll have to change this to where you downloaded Heart_Disease.csv

df <- read.csv('Heart_Disease.csv')

View(df)



#the code below runs a t-test using a null hypothesis of 250 as the mean value for CHOL
results <- t.test(df$CHOL, mu = 250)
results

# for you to do: run t-tests for the mean value of CHOL=260, RBP=137