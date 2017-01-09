if ( !exists("varechem") )  source("01_importData.R") 

# This script outputs basic stats of our data...

mean(varechem)
sd(varechem)
var(varechem) # generates a variance-covariance matrix

# let's export the var-covar matrix to a CSV...
write.csv(var(varechem), file = "varCovVarechem.csv")

# Let's get the sum of each variable (column)..
colSums(varechem)

# rows?
rowSums(varechem)

# let's get the mean of each variable. Unfortunately, pre-made
# functions don't always exists. Don't worry, we'll write our own...

# create a for loop

# Here's the basic format adapted from
# http://paleocave.sciencesortof.com/2013/03/writing-a-for-loop-in-r/

# foo <- seq(1, 150, by = 2)
# foo.squared <- NULL
# 
# for (i in 1:length(foo) ) {
#   foo.squared[i] = foo[i]^2
# }

# first, I need to know how many variables I have
# I use dim, but only want the second result 
# (the first is rows, which correspond to samples not variables
# in this case)



for (i in 1:dim(varechem)[2]) {
   m <- mean(varechem[ , i])
   print(m)
   rm(m)
}
rm(i)

# let's get fancy...

m <- NULL

for (i in 1:dim(varechem)[2]) {
  m[i] <- mean(varechem[ , i])
}
rm(i)


variableMeans <- cbind(
  colnames(varechem),
  m
  )

variableMeans


# R has handy "apply" functions that you
# can use instead of for loops
# apply, sappy, lappy, tapply

apply(
  X = varechem,
  MARGIN = 2, # 1 is rows, 2 is cols
  FUN = sum
)
