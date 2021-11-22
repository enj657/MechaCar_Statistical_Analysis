# Use the library function to load the dplyr package
library(dplyr)

# import and read in the csv file as a dataframe
mecha_car_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# perform linear regression
lm(mpg~.,data=mecha_car_df)

# generate summary statistics for lm
summary(lm(mpg~.,data=mecha_car_df))