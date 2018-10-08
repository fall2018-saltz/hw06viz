
# Step B: Explore the Data – Understanding distributions
# 4) Create a histogram using GGPLOT for the population 

merged <- mergedDF2
tail(merged)
library(ggplot2)
myPlot <- ggplot(merged)
myPlot <- myPlot + aes(x=population)
myPlot <- myPlot + geom_histogram(bins = 30)
myPlot

# And a different histogram for the murder rate
myPlot2 <- ggplot(merged)
myPlot2 <- myPlot2 + aes(x=Murder)
myPlot2 <- myPlot2 + geom_histogram(bins = 30)
myPlot2

#Then build similar code to create histograms of each of the other
#three variables in the merged data frame. 
#What parameter will you have to adjust to make the other histograms look right?
#Answer: Adjust the x value to make the histograms look right.
#Assault
myPlot3 <- ggplot(merged)
myPlot3 <- myPlot3 + aes(x=Assault)
myPlot3 <- myPlot3 + geom_histogram(bins = 30)
myPlot3

#UrbanPop
myPlot4 <- ggplot(merged)
myPlot4 <- myPlot4 + aes(x=UrbanPop)
myPlot4 <- myPlot4 + geom_histogram(bins = 30)
myPlot4

#Rape
myPlot5 <- ggplot(merged)
myPlot5 <- myPlot5 + aes(x=Rape)
myPlot5 <- myPlot5 + geom_histogram(bins = 30)
myPlot5

#5) Create a boxplot for the population
myPlot6 <- ggplot(merged,aes(x=population)) + geom_boxplot()


#and a different boxplot for the murder rate.







