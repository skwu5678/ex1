getwd()
setwd("C:\\20160122")
getwd()
df1 <- read.csv("train_users_2.csv", header=TRUE, sep=",")
head(df1)
tail(df1)
df2 <- read.csv("sessions99.csv", header=TRUE, sep=",")
install.packages("sqldf")
library(sqldf)
df3 <- sqldf("SELECT *, sum(df2.secs_elapsed) FROM df1 LEFT JOIN df2 on df1.id=df2.user_id group by df1.id ") 
write.csv(df3, file="answer2.csv")
