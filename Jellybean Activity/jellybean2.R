setwd("C:/Users/hp/Downloads/Study Material/R Code/Jelly Bean - Activity")
getwd()
jellybean <- read.csv("jelly.csv")
View(jellybean)




### IDENTIFY WHERE IS LARGEST OBS: INDEX

var2 = jellybean$jelly[-915]

var(jellybean$jelly) # This gives the variance of the entire data set
sd(jellybean$jelly) # This gives the standard deviation of the entire data set


sd(var2)
var(var2)



#What percentage of people guess a lower value than the actual number of jellybeans in the jar (1616)?

jellybean$jelly<1616
mean(jellybean$jelly<1616)*100

#What percentage of people guess a higher value than the actual number of jellybeans in the jar (1616)?

mean(jellybean$jelly>1616)*100

#What percentage of people guess exactly same value ie actual number of jellybeans in the jar (1616)?
mean(jellybean$jelly==1616)*100


#total percentage
lower <- mean(jellybean$jelly<1616)*100; lower
higher <-mean(jellybean$jelly>1616)*100; higher
equal <-mean(jellybean$jelly==1616)*100; equal

lower+higher+equal





#HOW MUCH IS THE MEDIAN UNDERESTIMATED OR OVERESTIMATED THAN THE TRUE VALUE? PROVIDE VALUE IN ABSOLUTE NUMBERS AND IN PERCENTAGES.

median_value <- median(jellybean$jelly); median_value
true_value <- 1616

difference <- (median_value - true_value); difference

abs(difference)

abs(difference)/true_value *100




#HOW MUCH IS THE MEAN UNDERESTIMATED OR OVERESTIMATED THAN THE TRUE VALUE? PROVIDE VALUE IN ABSOLUTE NUMBERS AND IN PERCENTAGES.

mean_value <- mean(jellybean$jelly)
true_value <- 1616

mean_difference <- (mean_value - true_value); mean_difference

abs(mean_difference)

abs(mean_difference)/true_value *100




#HOW MUCH IS THE MODE UNDERESTIMATED OR OVERESTIMATED THAN THE TRUE VALUE? PROVIDE VALUE IN ABSOLUTE NUMBERS AND IN PERCENTAGES.

mode_value <- 10000
true_value <- 1616

mode_difference <- mode_value - true_value
mode_difference

abs(mode_difference)

abs(mode_difference)/true_value *100



#if the difference are giving  
#Positive result =  It is overestimating
#Negative result = It is underestimating
# 0 result       = exactly correct



#### Dispersion

### Compute SD
sd1=sd(jellybean$jelly);sd1


### IQR 
# The interquartile range (IQR) is basically the "middle spread" of a dataset.
# It’s the difference between the third quartile (Q3) and the first quartile (Q1):
# IQR=Q3−Q1
# Q1 is the value at the 25% mark (where the lower quarter of data ends).
# Q3 is the value at the 75% mark (where the upper quarter of data starts).
# The IQR tells you how spread out the middle 50% of your data is, ignoring extreme highs and lows (outliers)
iqr1=IQR(jellybean$jelly)
print(iqr1)


### range
range1=range(jellybean$jelly); range1



#### Removed largest
sd2=sd(var2)
print(sd2)

iqr2=IQR(var2); iqr2
