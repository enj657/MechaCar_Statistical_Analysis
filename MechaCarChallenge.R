# Deliverable 1
# Use the library function to load the dplyr package
library(dplyr)

# import and read in the csv file as a dataframe
mecha_car_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# perform linear regression
lin_reg <- lm(mpg~.,data=mecha_car_df)

# generate summary statistics for lm
summary(lin_reg)


# Deliverable 2
# import and read csv as a table
suspension_coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F, stringsAsFactors = F)

# create dataframe to get mean, median, variance, and sd of PSI
total_summary <- suspension_coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 

# create dataframe grouping by manufacturing_lot
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 


# Deliverable 3
# use t-test to determine if PSI across all lots is statistically different from the population mean of 1500 PSI
t.test(suspension_coil_table$PSI,mu=1500) 

# use t-test to determine if PSI for each lot is statistically different from population mean
# lot 1
t.test(subset(suspension_coil_table$PSI, suspension_coil_table$Manufacturing_Lot=="Lot1"), mu=1500)

# lot 2
t.test(subset(suspension_coil_table$PSI, suspension_coil_table$Manufacturing_Lot=="Lot2"), mu=1500)

# lot 3
t.test(subset(suspension_coil_table$PSI, suspension_coil_table$Manufacturing_Lot=="Lot3"), mu=1500)






