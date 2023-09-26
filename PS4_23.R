
setwd("C:/Users/19084/Downloads") # you'll have to change this to where you downloaded Heart_Disease.csv

install.packages("ggplot2") # we only have to run this line once

library(ggplot2) #we have to run this line every time we open R

df <- read.csv('Heart_Disease.csv')

View(df)

#for our analysis, we're going to create a new column called SEX_FACTOR where the SEX variable
#is stored as a factor variable instead of a number
#replace the xxx with the relevant column
df$SEX_FACTOR = factor(df$xxx)

#plot a histogram of CHOL
ggplot(df, aes(x=xxx))+
  geom_histogram()

#change the width of the bins to 10
ggplot(df, aes(x=xxx))+
  geom_histogram(binwidth=10)

#change the colors to something of your choosing
ggplot(df, aes(x=xxx))+
  geom_histogram(color = "black",fill="white")

#add a density plot to your histogram
ggplot(df, aes(x=xxx))+
  geom_histogram(aes(y=..density..), color = "black",fill="white")+
  geom_density(alpha=.2, fill = "#FF6666")

#change histogram to color each sex differently, we need to add a factor variable for our color=xxx command
ggplot(df, aes(x=xxx, color=xxx))+
  geom_histogram(fill="white")

