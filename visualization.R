
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

