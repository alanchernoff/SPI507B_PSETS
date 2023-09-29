
setwd("C:/Users/19084/Downloads") # you'll have to change this to where you downloaded StateIncome.csv

StateInc <- read.csv('StateIncome.csv')

View(StateInc)

# calculate cov between income in 2021 and 2022, fill in the xxxxx
# xxxx = StateInc$Income22
cov(StateInc$Income21,xxxxx)

# calculate cor between income in 2021 and 2022, fill in the xxxxx
# xxxx = StateInc$Income22
cor(StateInc$Income21,xxxxx)

# calculate regression using income in 2022 as the dependent variable, fill in the xxxxx
# xxxx = StateInc$Income22
OLS_1 <- lm(xxxxx ~ Income21, data = StateInc)
summary(OLS_1)
