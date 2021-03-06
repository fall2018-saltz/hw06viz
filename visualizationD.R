
#Load ggplot2 library
merged <- mergedDF2
tail(merged)
library(ggplot2)

#Generate a scatter plot – have population on the X axis, 
#the percent over 18 on the y axis, 
#and the size & color represent the murder rate
options(scipen=999)
myPlot12 <- ggplot(merged,aes(x = population, y = percentOver18)) + geom_point(aes(size = Murder,color=Murder))
myPlot12
