# Question 1
# Write a function returning odd rows
# Of any dataframe passed as a function

# Usage: oddRows(x=dataframe)
oddRows<-function(x){
  x<-x[seq(1,nrow(x), 2),]
  return(x)
}

# Question 2
# Use functions to do the same tasks as last week
# Part One
# Return the number of observations for a given species included in the data set

# Usage: speciesCounts(x=iris, name="setosa")
iris<-read.csv("iris.csv")

speciesCounts<-function(x,name){
  subset<-x[x$Species==name,]
  return(nrow(subset))
}

# Part Two
# Return a dataframe with Sepal.Width
# Greater than a value specified by user

# Usage: SepalWidth(x=iris, value=2.5)
SepalWidth<-function(x,value){
  sepal<-x[x$Sepal.Width>value,]
  return(sepal)
}

# Part Three
# Write species data into column delimited file
# With given species name as the file name

# Usage:
# speciesFile(x=iris, species="setosa", filepath='~/Desktop/ICB2019_Exercise07/setosa.csv')
# setosa.csv is saved to Exercise07 folder and file contents are printed

speciesFile<-function(x,species,filepath){
  files<-x[x$Species==species,]
  write.csv(files, filepath)
  return(files)
}