# this assumes 00_generateDataCSV.R has been run

if ( !exists("varechem") )  source("00_generateDataCSV.R") 
rm("varechem")

# here's a script to import and clean up / reformat
# (if needed) a data set!

# for more info, run ?read.csv in the Console
varechem <- read.csv(
  file = "varechem.csv",
  header = TRUE,
  row.names = 1,
  sep = ","
)

varechem <- as.matrix(varechem)

dim(varechem)
