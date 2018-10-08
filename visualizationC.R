
#Load ggplot2 library
merged <- mergedDF2
tail(merged)
library(ggplot2)

#Step C: Which State had the Most Murders – bar charts
6)	Generate a bar chart, with the number of murders per state. Rotate text (on the X axis), so we can see x labels, also add a title named “Total Murders”. 
7)	 Generate a new bar chart, the same as in the previous step, but also sort the x-axis by the murder rate 
8)	 Generate a third bar chart, the same as the previous step, but also showing percentOver18 as the color of the bar
#1)	Calculate the number of murders per state
merged$MurderNumber <- merged$Murder * 1000000
head(merged)Generate a bar chart, with the number of murders per state Hint: use the geom_col function

myPlot8 <- ggplot(merged,aes(x=stateNames,y=MurderNumber))
myPlot8 = myPlot8 + theme(axis.text.x = element_text(angle = 90))
myPlot8 = myPlot8 +geom_col()
myPlot8
