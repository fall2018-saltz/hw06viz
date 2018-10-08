
# Step B: Explore the Data – Understanding distributions
# 4) Create a histogram using GGPLOT for the population and 
# a different histogram for the murder rate
merged <- mergedDF2
head(merged)
library(ggplot2)
myPlot <- ggplot(merged)
myPlot <- myPlot + aes(x=population)
myPlot <- myPlot + geom_histogram(binwidth=1)
myPlot
