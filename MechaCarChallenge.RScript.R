# Deliverable 1
# Use the library function to load the dplyr package
library(dplyr)

# import and read in the csv file as a dataframe
mecha_car_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# perform linear regression
lm(mpg~.,data=mecha_car_df)

# generate summary statistics for lm
summary(lm(mpg~.,data=mecha_car_df))


# Deliverable 2
# import and read csv as a table
suspension_coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F, stringsAsFactors = F)

# create dataframe to get mean, median, variance, and sd of PSI
total_summary <- suspension_coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 

# create dataframe grouping by manufacturing_lot
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 
