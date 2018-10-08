
#Load ggplot2 library
merged <- mergedDF2
tail(merged)
library(ggplot2)
merged$MurderNumber <- merged$Murder * 1000000
head(merged)
myPlot8 <- ggplot(merged,aes(x=stateNames(angle = 90),y=MurderNumber))
myPlot8
