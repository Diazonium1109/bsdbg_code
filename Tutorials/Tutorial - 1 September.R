# REPRESENTATING VECTORS

numbers <- c(2,3,4,5,6,7,8,9,10) # This is a vector. This represents the whole as a set
numbers

name <- c("rahul", "arun", "sara") # You need "" for a string
name

numbers[2] # Here, counting doesn't start from 0, but from 1
numbers[5]

name[2]
name[1]




# DIFFERENT STATISTICAL MEASURES
marks <- c(50,60,70,80,90,70,80,60,60,70)

mean(marks) # This gives mean of the data
median(marks) # This gives median of the data
sd(marks) # This gives standard deviation of the data
var(marks) # This gives variance of the data
sort(marks) # This sorts all the elements in the vector in increasing order. here, repeating elements are also mention as per their frequency
table(marks) # This gives the data in a tabular form in **increasing order of the elements**
sort(table(marks)) # This would sort the data in **increasing order of the frequency**



# REPRESENTATING DATA IN TABULAR FORM USING DATA.FRAME

#Method 1
students <- data.frame (
  Name = c("anu","rahul","anjali"),
  Age = c(18,19,20),
  Marks = c(70,85,90),
  Gender = c("Female","Male","Female")
)

students


#Method 2
row1 <- data.frame(name="anas",age=30,marks=70)
row2 <- data.frame(name="shyam",age=20,marks=90)

teachers <- rbind(row1,row2) # This will bind the "data.frame"
teachers




# SIMPLE PLOTS USING HOLLOW DOTS
x <- c(1,2,3,4,5)
y <- c(2,4,6,8,10)
# "Main" is the heading of the plot/graph
# "xlab" gives name at the x-axis
# "ylab" gives name at the y-axis
# To plot like this, we need 'x' and 'y' of same lengths
plot(x,y,main="simple plot",xlab="x values",ylab="y values")





#PLOTTING A HISTOGRAM
#By default, R chose 4 bins here:
#~50–60
#~60–70
#~70–80
#~80–90

# Then it counted how many marks fall into each bin:
# 50–60 → 4 values (50, 60, 60, 60)
# 60–70 → 3 values (70, 70, 70)
# 70–80 → 2 values (80, 80)
# 80–90 → 1 value (90)

marks <- c(50,60,70,80,90,70,80,60,60,70)
hist(marks,main="histogram of marks", xlab="marks")



# PLOTTING DIFFERENT LINE GRAPHS
x <- 1:10; x
y <- x^2; y   # square of x
plot(x, y, type="l", col="red",main="Line Plot", xlab="X", ylab="Y") # This gives line graph
plot(x, y, type="p", main="points", xlab="X", ylab="Y") # This gives a point graph
plot(x, y, type="b", main="both", xlab="X", ylab="Y") # This gives both line and point graph and there are gaps between points and line
plot(x, y, type="o", main="points over the line", xlab="X", ylab="Y") # This also gives both but the line overlaps the points as well
plot(x, y, type="h", main="vertical line from x axis", xlab="X", ylab="Y") # This gives vertical line from x axis
plot(x, y, type="s", main="steps", xlab="X", ylab="Y") # This gives steps as in gif function



# PLOTTING A BARPLOT
fruits <- c("Apple", "Banana", "Mango", "Orange")
sales <- c(20, 35, 15, 30)

# "names.arg" will give the name of elements below x-axis as stored in the vector named "fruits"
barplot(sales, names.arg=fruits, col="green", 
        main="Fruit Sales", xlab="Fruits", ylab="Quantity")





#PLOTTING A PIE CHART
slices <- c(10, 20, 30, 40, 33, 100, 12, 14, 17, 20)
element <- c("Apple", "Boy", "Cat", "Dear","Eagle","farmer","India","Asia","USA","UK")
# This will give a Pie Chart. Use the function "labels" to give name to the sections of the chart
# We can't put any string in "slice" because the numbers there divide the pie chart in proportion. Putting strings there will give error
pie(slices, labels=element, main="Pie Chart Example", col=rainbow(10))



# PLOTTING A BOX PLOT
marks <- c(50, 60, 70, 80, 90, 55, 65, 75, 85, 95)
# There are 4 elements in a box plot
# Minimum → the smallest value (excluding outliers). That is represented by the slim black line at the bottom which in this case is 50
# Q1 (first quartile) → 25% of the data is below this. This is where the box, which in this case is of yellow colour, starts
# Median (Q2) → the middle value (50% mark). Represented by a thick black line at the middle
# Q3 (third quartile) → 75% of the data is below this. This is where the box ends and the dotted lines start
# Maximum → the largest value (excluding outliers)
boxplot(marks, col="yellow",main="Boxplot of Marks", ylab="Marks")



#PLOTTING MULTIPLE LINE GRAPHS IN ONE PLOT
x <- 1:10
y1 <- x # This assigns the variable as in y1 = x
y2 <- x^2 # y2 = x^2
y3 <- x^3 # y3 = x^3

plot(x, y1, type="l", col="blue", ylim=c(0, 1000),
     main="Multiple Line Plot", xlab="X", ylab="Values")
lines(x, y2, col="red")
lines(x, y3, col="green")


legend("topleft", legend=c("y=x", "y=x^2", "y=x^3"),
       col=c("blue","red","green"), lty = 3)
