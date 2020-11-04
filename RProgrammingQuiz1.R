df<-read.csv("G:/DataSet/hw1_data.csv")
head(df,3) #returns Head
tail(df,2) #returns tail
df[47,]    # returns nth element
df["Day"]  #returns specific column values 
df$Ozone   #returns specific column values 
df$Ozone[is.na(df$Ozone)] #returns is.na(df$Ozone) all Na values in a column
df$Ozone[!is.na(df$Ozone)]       # returns all non Na values in a column
mean(df$Ozone[!is.na(df$Ozone)])  #returns mean
max(df$Ozone[!is.na(df$Ozone)])   #returns Max
min(df$Ozone[!is.na(df$Ozone)])   #returns min
median(df$Ozone[!is.na(df$Ozone)]) #returns medain
x<-subset(df, Ozone>10 & Month==6) #subset from a df
x
