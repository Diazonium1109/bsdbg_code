## Find out your working directory
setwd("C:/Users/hp/Downloads/Study Material/R Code/Jelly Bean - Activity") # This will set the working directory
getwd() # This verifies whether we are in the correct working directory

jelly <- read.csv("jelly.csv")
View(jelly)

# Strip chart (aka dot plot) of the jellybean column from the jelly data set.
stripchart(jelly$jellybean,
           method = "jitter", # This takes care of equal values. Say, two people guessed 100, then the plot will shift sideways, just by a tiny bit so as to avoid overlapping
           pch = 4, # This decides the type of symbol. A list of all symbols and their corresponding values has also been provided
           cex=.9, #character expansion factor. In this case, it makes the symbols 90% of the default size.
           col = "red", # A hex code of any particular color can also be used here so as to produce the desired color for the symbol used
           main = "(a) Stripchart of Jelly Bean Guesses", # This is the title of the strip chart
           cex.main = .8, # This will change the title
           xlab = "Guess at number of beans in jar")


# Box plot (part b)
boxplot(jelly$jellybean,
        horizontal = TRUE, #By default, box plots are vertical. This makes it horizontal, so the guesses are shown along the x-axis. It is easier to read when numbers are large (like jellybean guesses).
        col = "lightgray",
        main = "(b) Boxplot of Jelly Bean Guesses",
        xlab = "Guess at number of beans in jar")


# Histogram (part c)
hist(jelly$jellybean,
     breaks = 30,         # number of bins (you can adjust)
     col = "lightgray",   # fill color
     border = "black",    # outline color
     main = "(c) Histogram of Jelly Bean Guesses",
     xlab = "Guess at number of beans in jar",
     ylab = "Frequency")


m1 = mean(jelly$jellybean); m1
m2 = median(jelly$jellybean); m2
min(jelly$jellybean)
max(jelly$jellybean)
mode(jelly$jellybean) # This is well tell the type of data which is stored in the system internally


# DIFFERENT PLOTS IN LOGARITHMIC SCALE
stripchart(log(jelly$jellybean, base = 10),
           method = "jitter",
           pch = 19,
           col = "black",
           main = "(a) Stripchart of Jelly Bean Guesses (log scale)",
           xlab = "log10(Guess at number of beans in jar)")


boxplot(log(jelly$jellybean, base = 10),
        horizontal = TRUE,
        main = "(b) Boxplot of Jelly Bean Guesses (log scale)",
        xlab = "log10(Guess at number of beans in jar)")


# This is histogram in log scale
hist(log(jelly$jellybean, base = 10),
     breaks = 30,
     col = "#15CBD6",
     main = "(c) Histogram of Jelly Bean Guesses (log scale)",
     xlab = "log10(Guess at number of beans in jar)")


hist(jelly$jellybean,
     breaks = 30,
     col = "lightgray",
     border = "black",
     main = "(c) Histogram of Jelly Bean Guesses",
     xlab = "Guess at number of beans in jar",
     ylab = "Frequency",
     xaxt = "n")  # suppress default x-axis

# Now add x-axis ticks at multiples of 1000
axis(1, at = seq(0, max(jelly$jellybean), by = 5000))



## IDENTIFY WHETE IS THE LARGEST OBSERVATION
max.index <- which(jelly$jellybean == max(jelly$jellybean)); max.index
var2 = jelly$jellybean[-915]

length(var2)
range(var2)

var2.mean = mean(var2); var2.mean
mean.floor <- floor(var2.mean); mean.floor
mean.ceil <- ceiling(var2.mean); mean.ceil
