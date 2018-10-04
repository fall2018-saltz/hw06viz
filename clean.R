
#Step A: Load and Merge datasets
#1)	Read in the census dataset (using the function created in HW 3)
popState <- row_data
my_func <- function(popState)
{
    popState <- popState[-c(1,53),-c(1,2,3,4)]
    colnames(popState) <- c("stateNames","population","popOver18","percentOver18")
    return(popState)
}
popState <- my_func(popState)
head(popState)
#2)	Copy the USArrests dataset into a local variable (similar to HW 2)
arrests <- USArrests
head(arrests)
#3) Create a merged dataframe -- with the attributes from both dataframes
row.names(popState) <- popState$stateNames
mergedDF <- merge(popState, arrests, by=0, all=TRUE)
head(mergedDF)
# Drop the Row.names column
mergedDF2 <- mergedDF[ -c(1) ]
head(mergedDF2)

# Step B: Explore the Data – Understanding distributions
# 4) Create a histogram using GGPLOT for the population and 
# a different histogram for the murder rate
library(ggplot)
myPlot <- ggplot(mergedDF2)
myPlot <- myPlot + aes(x=population)
myPlot <- myPlot + geom_histogram(binwidth=1)





