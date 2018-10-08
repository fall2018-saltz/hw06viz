
# Step B: Explore the Data – Understanding distributions
# 4) Create a histogram using GGPLOT for the population and 
# a different histogram for the murder rate

library(ggplot2)
myPlot <- ggplot(mergedDF2)
myPlot <- myPlot + aes(x=population)
myPlot <- myPlot + geom_histogram(binwidth=1)
myPlot
