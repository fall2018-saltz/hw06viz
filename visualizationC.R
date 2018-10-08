
#Load ggplot2 library
merged <- mergedDF2
tail(merged)
library(ggplot2)
myPlot8 <- ggplot(merged,aes(x=stateNames,y=Murder))
