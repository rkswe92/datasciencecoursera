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
seq(0, 10, by = 0.5)
my_seq <- seq(5, 10, length = 30)
length(my_seq)  #returns length of the vector
#below 3 are same
1:length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)

rep(c(0, 1, 2), times = 10) #replicates a number or vector n times
rep(c(0, 1, 2), each = 10) # to replicate each n times

#4
my_char <- c("My", "name", "is")
paste(my_char, collapse = " ")
paste("Hello", "world!", sep = " ")  # separate attribute
paste(c(1:3), c("X", "Y", "Z"), sep = "") # concatenating two vectors
paste(LETTERS, 1:4, sep = "-")

#5
y <-
        rnorm(1000) #drawing 1000 inputs from standard normal distribution
my_data <- sample(c(y, z), 100) #drawing samples
my_na <- is.na(my_data) #to find all the NA in data
sum(my_na) #sum function

#6
x[is.na(x)] #returns all NA subset vectors
x[!is.na(x) & x > 0]
x[c(3, 5, 7)] #creating a subset vector with indexs of 3,5,7
x[c(-2,-10)]
#Whereas x[c(2, 10)] gives us ONLY
#| the 2nd and 10th elements of x, x[c(-2, -10)] gives us all elements of x EXCEPT
#| for the 2nd and 10 elements.
vect <- c(foo = 11, bar = 2, norf = NA)
names(vect) #returns names of a vector
names(vect2) <- c("foo", "bar", "norf") #naming unnamed vector
identical(vect, vect2) #function to check if two vectors are Identical
vect["bar"] #gives 2nd index
vect[c("foo", "bar")]

#7
my_vector <- 1:20
dim(my_vector) # a vector wont be having a dimentions
length(my_vector) #gives length of the vector
dim(my_vector) <- c(4, 5) #converting vector to a 4X5 Matrix
class(my_vector) #returns the object type
my_matrix2 <- matrix(data = 1:20,
                     nrow = 4,
                     ncol = 5) #matrix creation
patients <- c("Bill", "Gina", "Kelly", "Sean") #adding column names
cbind(patients, my_matrix) #this fucntion binds the new column to the matrix
my_data <-
        data.frame(patients, my_matrix) #separates charactor vectors from numberics
cnames <-
        c("patient", "age", "weight", "bp", "rating", "test") #adding column names
colnames(my_data) <- cnames

#8 Logical operators
# always AND is executed first than OR
5>8 ||6!=8 && 4>3.9
#isTRUE() function to check the logical expression1
isTRUE(6>4)
identical(TRUE,TRUE) # functions checks for object and returns true if they are identical
xor(TRUE,FALSE) # If one argument evaluates to TRUE and one argument evaluates to FALSE, then this
 #function will return TRUE, otherwise it will return FALSE
ints<-sample(10) # sample functions returns samples of ints
which(ints>7)    # which() function to find the indices of ints
any(ints<0) #any() function to see if any of the elements of ints
all(ints>0) #all() function to see if all of the elements of ints

#9 Functions
#If you want to see the source code for any function, just type the
# function name without any arguments or parentheses
args(function_name) #use this function to get the info about arguments of a function
telegram <- function(...){ #ellipsis operator
           paste(...,"START",sep="", collapse = NULL,"STOP")
}
# User-defined binary operators have the following syntax:
#      %[whatever]% 
"%p%" <- function(lf,rt){ 
        paste(lf,sep=" ",collapse = NULL,rt)
} # call -> "r" %p% "p" 

#9 Date & Time
#Dates are represented by the 'Date' class and times are represented by the 'POSIXct'
#and 'POSIXlt' classes
d1<-Sys.Date() #gives current date
class(d1) # gives the type of d1
unclass(d1) #gives the no.of days from 1970-01-01
d2 <- as.Date("1969-01-01") # if you want to try any date before 1970 we need to use as.Date() to have that date
t1<-Sys.time() # You can access the current date and time using the Sys.time() function with no arguments
class(t1) #by default it is POSIXct is the type
t2<- as.POSIXlt(Sys.time()) # to have it in POSIXlt format we can use this function
unclass(t2) # both t1,t2 show same value but Posixlt unclass function gives more option to get various metadata info of the date & time
str(unclass(t2)) # t2$min
weekdays(d1) # returns day of the week
months(d1) # returns month
quarters(t2) #returns Quater of the year
t3<-"October 17, 1986 08:24"
t4<-strptime(t3,"%B %d, %Y %H:%M") #strptime converts the normal unformatted date time into a formatted Posixlt format
difftime(Sys.time(),t1,units='days') #returns diff in days between two
Sys.time()-t1 # arthimetic operations can be applied

#10 lapply and sapply
class(flags) # returns dimentions of the df
cls_list<- lapply(flags, class) # lapply takes input as list and returns output as list after applying the function on each column
cls_vect<-sapply(flags,class) #sapply takes input as list and returns output as vector after applying the fucntion on each coulmn
flag_colors<- flags[,11:17] # returns dataframe from the columns 11 to 17
shape_mat<-lapply(flag_shapes,range) #range function will return min and mix values
unique(c(3,4,5,5,5,6,6)) # unique funtion returns unique elements from a vector
sapply(unique_vals, length) # length function returns the length of the column
lapply(unique_vals, function(elem) elem[2]) # custom function example  

#11 vapply and mapply
vapply(flags,class, character(1)) #vapply takes input as list and returns vector in specific class type and it requires us to mention the type explicity before execution
tapply(flags$animate,flags$landmass,mean) # Use tapply(flags$animate, flags$landmass, mean) to apply the mean function to
                                          #| the 'animate' variable separately for each of the six landmass groups, thus giving us the proportion of flags containing an animate image WITHIN each landmass group.
#tapply returns mean of animate for each of the landmass categories
tapply(flags$population,flags$red,summary) #returns the summary of the population with and without red color
tapply(flags$population, flags$landmass, summary) #returns the summary of the population differnent land mass
with(mtcars,tapply(mpg,cyl,mean)) # with function can use to facilitate the same as above

#11 stimulation and profiling  
str   # str is a structure fucntion which is just like summary
set.seed(1) # this allows us to get the same set of random numbers again 
            # based on the seed

#12 look for data
head(plants,6) # returns top 6 rows from plants DF
dim(plants) # returns #rows and #columns
nrows(plants) # returns number of rows
ncol(plants) # return number of columns
object.size(plants) # returns the memory size occupied by DF
tail(plants,15) #returns last x items from the plants DF
summary(plants) #returns the consolidated report of all columns details their type,length,mean,median,NA`s
table(plants$Active_Growth_Period) #returns the list of categorial variables and their repeating count
str(plants) #this gives a overall meta info of the data frame very powerful command which helps us understand the content of the dataset,function, etc

#13 Simulation
sample(1:6,4,replace = TRUE) # samples randomly selects 4 numbers between 1 to 6, with replacement
sample(1:20,10) #If replace parameter is not mentioned then default replacement=false, So no repeatation
flips<-sample(c(0,1),100,replace=TRUE,c(0.3,0.7)) #we can use probabilty to a sample as well
flips2<-rbinom(100,size=1,prob=0.7) # rbion binomial function can be used whenever there is a 2 outcomes with repeated experiments
rnorm(10,100,25) #random distribution with Mean and sd default mean=0,sd=1
rpois(5,10) #random poisson distribution
my_pois<-replicate(100, rpois(5, 10)) # to repeat the rpois 100 times we use replicate function
cm<-colMeans(my_pois) #returns mean of all columns
hist(cm) #plots a histogram against the means
#13 graphs
head(cars)
plot(cars) # scattered plot fucntion =>plot() plots a graph on Dist vs speed
plot(x=cars$speed,y=cars$dist)
plot(x=cars$speed,y=cars$dist,xlab = "Speed",ylab = "Stopping Distance") #adding the labels to X and Y axis
plot(cars,main="My Plot") #adding Main Tittle to the graph
plot(cars,sub="My Plot Subtitle") #adding subtittle to the graph
plot(cars,col=2) #coloring the points in the graph
plot(cars,xlim=c(10,15)) #limits the values of X between 10 to 15
plot(cars,pch=2) #uses plotting points as triangles
boxplot(formula=mpg~cyl,data = mtcars) #box plot formula specifies the x-axis and y-axis columns
hist(cars$mpg) #hist is a histogram graph which is usally used with single columns

#Always apply complete.cases(core_df) after selecting your required columns dont apply on all columns this can lead to data loss on required column
# eg      Name  Age Sex
#          RK   NA   M
#          SK   12   F
#And you want only filter based on Name and Sex and now if you apply complete.cases(core_df) on entire columns you will lose
# information of entire first record as there is a NA on Age instead you have to select only Name and Sex and apply complete.cases(core_df)