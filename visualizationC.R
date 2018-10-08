
#Load ggplot2 library
merged <- mergedDF2
tail(merged)
library(ggplot2)

#Step C: Which State had the Most Murders – bar charts
#1)	Calculate the number of murders per state
merged$MurderNumber <- merged$Murder * 1000000
head(merged)
#2) Generate a bar chart, with the number of murders per state
myPlot8 <- ggplot(merged,aes(x=stateNames,y=MurderNumber))
myPlot8 = myPlot8 +geom_col()
myPlot8
#3)Generate a bar chart, with the number of murders per state. 
#Rotate text (on the X axis), so we can see x labels, 
#also add a title named “Total Murders”.
myPlot8 = myPlot8 + theme(axis.text.x = element_text(angle = 90))
