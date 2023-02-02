
#     PART 1 - LINEAR REGRESSION TO PREDICT MPG 
#     PART 1 - Attempt 2  - MULTIPLE LINEAR REGRESSION TO PREDICT MPG 

# 3. Use Library() function to load in dplyr package 
library(dplyr)

# 4. Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_Table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# 5. Perform multiple linear regression using the lm() function.
lm(mpg ~ vehicle_weight + vehicle_length + spoiler_angle + ground_clearance + AWD,data=MechaCar_Table) #generate multiple linear regression model

# 6. Using the summary() function, determine the p-value and 
# the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_weight + vehicle_length + spoiler_angle + ground_clearance + AWD,data=MechaCar_Table)) #generate summary statistics

#--------------------------------------------------------------------------#

#     PART 2 - CREATE VISUALIZATIONS FOR THE TRIP ANALYSIS 

# 2. Import and read in the Suspension_Coil.csv file as a dataframe.
Suspension_Table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)


# 3. Write a RScript that creates a total_summary dataframe using summarize()
Total_Summary <- summarize(Suspension_Table, mean(PSI), median(PSI), var(PSI), sd(PSI))


# 4. Write an RScript that creates a lot_summary dataframe using 
#   the group_by() and the summarize() functions to group each 
#   manufacturing lot by the mean, median, variance, 
#   and standard deviation of the suspension coil’s PSI column.

Lot_Table <- group_by(Suspension_Table,Manufacturing_Lot)

Lot_Summary <- summarize(Lot_Table, mean(PSI), median(PSI), var(PSI), sd(PSI))


#--------------------------------------------------------------------------#

#     PART 3 - T-TESTS ON SUSPENSION COILS

# 1. In your MechaCarChallenge.RScript, write an RScript using the t.test() 
#   function to determine if the PSI across all manufacturing lots is statistically 
#   different from the population mean of 1,500 pounds per square inch.

t.test(Suspension_Table$PSI,mu = 1500)


# 2. Next, write three more RScripts in your MechaCarChallenge.RScript using the 
#   t.test() function and its subset() argument to determine if the PSI for each 
#   manufacturing lot is statistically different from the population mean of 1,500 pounds 
#   per square inch.

Man_Lot_1= subset(Suspension_Table, Manufacturing_Lot == 'Lot1')
Man_Lot_2= subset(Suspension_Table, Manufacturing_Lot == 'Lot2')
Man_Lot_3= subset(Suspension_Table, Manufacturing_Lot == 'Lot3')

# t.test Man_Lot_1, Man_Lot_2, Man_Lot_3
t.test(Man_Lot_1$PSI,mu = 1500)
t.test(Man_Lot_2$PSI,mu = 1500)
t.test(Man_Lot_3$PSI,mu = 1500)

#--------------------------------------------------------------------------#

#     PART 4 - Design a Study Comparing the MechaCar to the Competition






#--------------------------------------------------------------------------#
########                  EXTRA CODE !!!                #########
### [1] VEHICLE_WEIGHT

# 5. Perform linear regression using the lm() function.vehicle_weight
lm(mpg~vehicle_weight,MechaCar_Table) #create linear model

# 6. Using the summary() function, determine the p-value and 
#.   the r-squared value for the linear regression model.
summary(lm(mpg~vehicle_weight,MechaCar_Table)) #summarize linear model

### [2] VEHICLE_LENGTH

# Perform linear regression using the lm() function.vehicle_length
lm(mpg~vehicle_length,MechaCar_Table) #create linear model

# Using the summary() function, determine the p-value and 
# the r-squared value for the linear regression model.
summary(lm(mpg~vehicle_length,MechaCar_Table)) #summarize linear model

### [3] SPOILER_ANGLE

# Perform linear regression using the lm() function.spoiler_angle
lm(mpg~spoiler_angle,MechaCar_Table) #create linear model

# Using the summary() function, determine the p-value and 
# the r-squared value for the linear regression model.
summary(lm(mpg~spoiler_angle,MechaCar_Table)) #summarize linear model

### [4] GROUND_CLEARENCE 

# Perform linear regression using the lm() function.ground_clearance
lm(mpg~ground_clearance,MechaCar_Table) #create linear model

# Using the summary() function, determine the p-value and 
# the r-squared value for the linear regression model.
summary(lm(mpg~ground_clearance,MechaCar_Table)) #summarize linear model

### [5] AWD 

# Perform linear regression using the lm() function.AWD
lm(mpg~AWD,MechaCar_Table) #create linear model

# Using the summary() function, determine the p-value and 
# the r-squared value for the linear regression model.
summary(lm(mpg~AWD,MechaCar_Table)) #summarize linear model



#Lot_Groups <- Suspension_Table %>% group_by(Manufacturing_Lot) %>% summarize(Group_mean=mean(PSI), .groups = 'keep') #create summary table

#t.test(Total_Summary, Lot_Summary)

#M_Lot1 <- Suspension_table %>% filter(yManufacturing_Lot==Lot1) #select only data points where Lot 1
#t.test(M_Lot1,M_Lot1,paired = T) #compare the mean difference between two samples



