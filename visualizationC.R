
#Load ggplot2 library
merged <- mergedDF2
tail(merged)
library(ggplot2)
options(scipen=999)

#Step C: Which State had the Most Murders – bar charts
#1)	Calculate the number of murders per state
merged$MurderNumber <- merged$Murder * 1000000
head(merged)

#2) Generate a bar chart, with the number of murders per state
myPlot8 <- ggplot(merged,aes(x=stateNames,y=MurderNumber, width=.5))
myPlot8 = myPlot8 +geom_col()
myPlot8

#3)Generate a bar chart, with the number of murders per state. 
#Rotate text (on the X axis), so we can see x labels, 
#also add a title named “Total Murders”.
myPlot9 <- ggplot(merged,aes(x=stateNames,y=MurderNumber, width=.5))
myPlot9 = myPlot9 + theme(axis.text.x = element_text(angle = 90))
myPlot9 = myPlot9 + geom_col() + ggtitle("Total Murders")
myPlot9

#4)Generate a new bar chart, the same as in the previous step,
#but also sort the x-axis by the murder rate
myPlot10 <- ggplot(merged,aes(x=reorder(stateNames,-MurderNumber),y=MurderNumber, width=.5))
myPlot10 = myPlot10 + theme(axis.text.x = element_text(angle = 90))
myPlot10 = myPlot10 + geom_col() + ggtitle("Total Murders")
myPlot10

#5) Generate a third bar chart, the same as the previous step, 
#but also showing percentOver18 as the color of the bar
myPlot11 <- ggplot(merged,aes(x=reorder(stateNames,-MurderNumber),y=MurderNumber, width=.5))
myPlot11 = myPlot11 + theme(axis.text.x = element_text(angle = 90))
myPlot11 = myPlot11 + geom_col(aes(fill=percentOver18)) + ggtitle("Total Murders")
myPlot11




