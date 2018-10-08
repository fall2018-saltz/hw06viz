
#Load ggplot2 library
merged <- mergedDF2
tail(merged)
library(ggplot2)
merged$MurderNumber <- merged$Murder * 1000000
head(merged)
myPlot8 <- ggplot(merged,aes(x=stateNames,y=MurderNumber))
myPlot8 = myPlot8 + theme(axis.text.x = element_text(angle = 90))
myPlot8 = myPlot8 +geom_col()
myPlot8
