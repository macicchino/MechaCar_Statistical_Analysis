# MechaCar_Statistical_Analysis - Module 16 Challenge


## Deliverable 1
## Linear Regression to Predict MPG

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - The vehicle_length (With Pr(>|t|) = 2.60e-12) and ground_clearence (With Pr(>|t|) = 5.21e-08) have a significant amount of non-random variance with mpg. In other words these two variables have a significant impact on mpg. The other variables: vechicle_weight, spoiler_angle, and AWD are statistically likely to provide random variance to the model (with larger Pr(>|t|) values. 

- Is the slope of the linear model considered to be zero? Why or why not?

  - The p-value of our linear regression analysis is 5.35e x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - Yes, to a degree. Out Multiple R-squared value of 0.7149 shows there is about 71% percent of the variance in the response variable can be explained by the explanatory variables. In addition, out p-value is still significant with a p-value of 5.35e x 10-11, which is much smaller than our assumed significance level of 0.05%.

![dev_1](images/Dev-1_Predict-MPG.png "Dev 1 Image")

## Deliverable 2
## Summary Statistics on Suspension Coils

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  - As shown in the images below. The overall variance for suspension coil PSI is 62.3 which is within the limits of MechaCar's design specifications. However, looking at the breakdown by lot, we see that only Lot1 (var(PSI)=0.97) and Lot2 = (var(PSI)=7.5) are in accordence with MechaCar's design specifications. Lot3 has a drastic difference in variance of (var(PSI)=170.3) , which falls short of MechaCar's design specifications and taints the variance in the overall statistical summary. 

![dev_2.1](images/Dev-2.1_Total-Summary.png "Dev 2.1 Image")

![dev_2.2](images/Dev-2.2_Lot-Summary.png "Dev 2.2 Image")

## Deliverable 3
## T-Tests on Suspension Coils

- Briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary

  - When taking a t-test of the sample (including all lots) against a population mean of 1500. We find that the p-value is 0.06028 which is technically out of our assumed significane level of 0.05 percent. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

![dev_3.1](images/Dev-3.1_T-Test.png "Dev 3.1 Image")

  - When taking a t-test of each lot sample against a population mean of 1500. 
  - We find that the p-value for Lot1 is 1. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.
  - We find that the p-value for Lot2 is 0.61. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.
  - We find that the p-value for Lot3 is 0.04. Therefore, we have sufficient evidence to reject the null hypothesis, and we would state that the two means are not statistically similar.

![dev_3.2](images/Dev-3.2_T-Test-by-Lot.png "Dev 3.2 Image")

## Deliverable 4
## Study Design: MechaCar vs Competition

- Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

I think comparing cost data against variables MPG, Horse Power, and Safety Rating for MechaCar vechicals could be a useful added value comparison to the competitions vechicles. 

In your description, address the following questions:
- What metric or metrics are you going to test?
  - I want to test cost data against variables MPG, Horse Power, and Safety Rating.
- What is the null hypothesis or alternative hypothesis?
  - The null hypothesis would be that MechaCare Costs have no significant relationship with any of the variables MPG, Horse Power, and Safety Rating. To reject the null, we would need to find an impace on price from one of the tested variables. 
- What statistical test would you use to test the hypothesis? And why?
  - I would run a multiple linear regression on all the variables to test if any of the variables have a statiscial impact on costs. This way we can see how MechaCar costs compare to competition and could be an important selling point. For example, if costs doesn't increase with a high saftey rating while costs in competiton cars this is the case. Then MechaCar could advertise that they provide safe vechicals but don't 'charge more' for safety compared to the competition.  

- What data is needed to run the statistical test?

I would need cost(Selling Price) data as well as the variables MPG, Horse Power, and Safety Rating for MechaCar vechicals. I would need the equilivent data for the competition. Ideally, a full population dataset to compare to. 
