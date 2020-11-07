getwd() #get working directory
ls()  #objects that are in your workspace using ls()
dir() #List all the files in your working directory using list.files() or dir().
dir.create("testdir") # creates a new directory
args(list.files) # Type args(list.files) to see the arguments to list.files.
setwd("testdir") #Set your working directory to "testdir" with the setwd() command.
file.create("mytest.R") #Create a file in your working directory called "mytest.R" using the file.create()
file.exists("mytest.R")# Check to see if "mytest.R" exists in the working directory using the
                       #file.exists() 
file.info("mytest.R") # Access information about the file "mytest.R" by using file.info(). 
#Lesson 3
seq(0,10, by=0.5)
my_seq<-seq(5,10, length=30)
length(my_seq)  #returns length of the vector
#below 3 are same
1:length(my_seq) 
seq(along.with = my_seq)
seq_along(my_seq)

rep(c(0,1,2),times=10) #replicates a number or vector n times
rep(c(0,1,2),each=10) # to replicate each n times

#4
my_char<-c("My","name","is")
paste(my_char,collapse=" ")
paste("Hello","world!",sep=" ")  # separate attribute
paste(c(1:3),c("X","Y","Z"),sep="") # concatenating two vectors
paste(LETTERS, 1:4, sep="-")
#5
y<-rnorm(1000) #drawing 1000 inputs from standard normal distribution
my_data<-sample(c(y,z),100) #drawing samples
my_na<-is.na(my_data) #to find all the NA in data
sum(my_na) #sum function
#6
x[is.na(x)] #returns all NA subset vectors
x[!is.na(x) & x > 0]
x[c(3,5,7)] #creating a subset vector with indexs of 3,5,7
x[c(-2, -10)]
#Whereas x[c(2, 10)] gives us ONLY
#| the 2nd and 10th elements of x, x[c(-2, -10)] gives us all elements of x EXCEPT
#| for the 2nd and 10 elements.
vect<-c(foo=11,bar=2,norf=NA)
names(vect) #returns names of a vector
names(vect2) <- c("foo", "bar", "norf") #naming unnamed vector
identical(vect,vect2) #function to check if two vectors are Identical
vect["bar"] #gives 2nd index
vect[c("foo","bar")]

