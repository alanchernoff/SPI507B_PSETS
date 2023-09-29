#The code below creates a list of 100 samples of 3 trial draws 
#the output, df, lists how many times blue was drawn in the three trials
s = 100 #number of samples to be drawn
p = 0.75 #probability of drawing a blue
blue1 <- rbinom(s,1,p)
blue2 <- rbinom(s,1,p)
blue3 <- rbinom(s,1,p)
totalblue = blue1+blue2+blue3
df <- data.frame(blue1,blue2,blue3,totalblue)
View(df)
