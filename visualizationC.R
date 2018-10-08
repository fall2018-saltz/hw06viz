
#Load ggplot2 library
merged <- mergedDF2
tail(merged)
library(ggplot2)
merged2 <- merged[merged$Murder*100000,]
head(merged2)
myPlot8 <- ggplot(merged2,aes(x=stateNames,y=Murder))
