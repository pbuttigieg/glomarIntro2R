# This script will install the vegan package and
# write one of its in-built data sets to a CSV file
# in R's working directory. We will reimport this data
# in our next script...

install.packages("vegan") # install from CRAN
require(vegan) # load vegan into our environment

# pull the varechem data out of vegan
data("varechem") 

# write the varechem object to a CSV file in our working
# directory

write.csv(varechem, file = "varechem.csv")



