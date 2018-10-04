
#Step A: Load and Merge datasets
#1)	Read in the census dataset (using the function created in HW 3)
population <- row_data
head(population)
#2)	Copy the USArrests dataset into a local variable (similar to HW 2)
arrests <- USArrests
head(arrests)
#3) Create a merged dataframe -- with the attributes from both dataframes
arrests[0,]
arrests[-c(0), ]
head(arrests)
# poparr <- merge(population, arrests)
# head(poparr)

