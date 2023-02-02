
# 3. Use Library() function to load in dplyr package 
library(dplyr)

# 4. Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_Table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

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


