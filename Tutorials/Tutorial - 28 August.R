jelly=read.csv("C:/Users/hp/Downloads/Study Material/R Code/Jelly Bean - Activity/jelly.csv") # This will import the csv file from the given path
View(jelly)


colnames(jelly) # This will tell the name of the column


#MEAN OF THE DATA

# Method 1
x_bar <- apply(jelly, 2, mean); x_bar
# When written 2, it mean column, when written 1, it means row

# Method 2
n <- length(jelly$jellybean);n # Here, the "n" after semi-colon is used to print n.
mean_2 <- sum(jelly$jellybean)/n ; mean_2 # sum(jelly$jellybean) will give the sum of a column named "jellybean" in a file named "jelly"

# Method 3
# We can also print in the next line without using semi-colon
col.mean <- mean(jelly$jellybean)
col.mean




#MEDIAN OF THE DATA
a = sort(jelly$jellybean) ; a # This will sort the data in increasing order but will also give repeating data. This won't miss any of them

# Method 1
# Directly use the in-built function presented in R
col.median <- median(jelly$jellybean); col.median


# Method 2
med <- (a[(n + 1)/2]); med # This formula is used when the number of entries is odd
# med <- (a[n/2] + a[n/2 + 1])/2; med ---- This is when the number of entries is even




#MODE OF THE DATA
tb <- table(jelly$jellybean); tb
col.mode <- names(tb) [which(tb == max(tb))]; col.mode
# Here, the function 'names' is used to list all the unique observation in the table only. The repting onces are listed only once not multple times

# Here, col.mode will give the mode of the data, but it will be present in "string" form. To convert in into integer, we use the below mentioned code
col.mode <- as.numeric(col.mode); col.mode
