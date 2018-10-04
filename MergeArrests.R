
#3) Create a merged dataframe -- with the attributes from both dataframes
popState <- popState
row.names(popState) <- popState$stateNames
mergedDF <- merge(popState, arrests, by=0, all=TRUE)
head(mergedDF)
# Drop the Row.names column
mergedDF2 <- mergedDF[ -c(1) ]
head(mergedDF2)

# Step B: Explore the Data – Understanding distributions
# 4) Create a histogram using GGPLOT for the population and 
# a different histogram for the murder rate

library(ggplot2)
myPlot <- ggplot(mergedDF2)
myPlot <- myPlot + aes(x=population)
myPlot <- myPlot + geom_histogram(binwidth=1)
myPlot
