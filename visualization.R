
# Step B: Explore the Data – Understanding distributions
# 4) Create a histogram using GGPLOT for the population and 
# a different histogram for the murder rate
merged <- cleanData
head(merged)
library(ggplot2)
myPlot <- ggplot(merged)
myPlot <- myPlot + aes(x=population)
myPlot <- myPlot + geom_histogram(binwidth=1)
myPlot

myPlot2 <- ggplot(merged)
myPlot2 <- myPlot2 + aes(x=Murder)
myPlot2 <- myPlot2 + geom_histogram(binwidth=1)
myPlot2
