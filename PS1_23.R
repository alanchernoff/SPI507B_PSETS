
setwd("C:/Users/19084/Downloads") # you'll have to change this

StateInc <- read.csv('StateIncome.csv')

View(StateInc)

# calculate mean state income in 2021
mean(StateInc$Income21)

# calculate mean state income in 2021
median(StateInc$Income21)

# calculate standard deviation state income in 2021
sd(StateInc$Income21)

# for you to do: repeat the above three lines of code, calculating mean, median, and stdev for 2022
# mean(StateInc$Income22)
# median(StateInc$Income22)
# sd(StateInc$Income22)



