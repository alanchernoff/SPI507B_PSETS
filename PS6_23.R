
setwd("C:/Users/19084/Downloads")


#Problem 2
#the following code provides some of the information you will need
#please edit the code to answer all of the questions on the problem set
#you'll need to write code for the regression models, as well as edit the following

df1 <- read.csv('state_temp_change.csv')
View(df1)

sum(df1$northwest) #provides the sum of the elements of column northwest in df1
length(df1$northwest) #provides the length of the column northwest in df1

df1$northtempchange = df1$northwest*df1$tempch #creates a column containing only temp changes in the northwest
df1$southtempchange = (1-df1$northwest)*df1$tempch #creates a column containing only temp changes in the southwest
df1$northtempchange[df1$northwest==0]<-NA
df1$southtempchange[df1$northwest==1]<-NA

#Note: We use the above two lines to remove any observations of '0'
#we need to do to before running out t-test as extra observations of value 0 will skew the mean/standard error


#the below code runs a two-sample t-test comparing the columns northtempchange to southtempchange 
results <- t.test(df1$northtempchange, df1$southtempchange, mu=0, conf.level=0.95) 
results

#Problem 3
#the following code provides some of the information you will need
#please edit the code to answer all of the questions on the problem set

df2 <- read.csv('gradrates_ps6.csv')
View(df2)

df2$FRPL_grad = df2$FRPL*df2$Graduated #creates a column containing only temp changes in the northwest
df2$non_FRPL_grad = (1-df2$FRPL)*df2$Graduated #creates a column containing only temp changes in the southwest

df2$West_grad[df2$FRPL==0]<-NA
df2$non_West_grad[df2$FRPL==1]<-NA

results <- t.test(df2$FRPL_grad, df2$non_FRPL_grad, mu=0, conf.level=0.95)
results

