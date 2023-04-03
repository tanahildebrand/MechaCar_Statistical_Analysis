# MechaCar_Statistical_Analysis

## Overview
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles. This analysis is done to provide insights into the available data that may help the manufacturing team. For the purposes of this analysis, we've been provided with two files: "MechaCar_mpg.csv" and and "Suspension_Coil.csv".

## Linear Regression to Predict MPG

![image](https://user-images.githubusercontent.com/41657419/229537963-491e4e94-f2ec-4b21-a82b-c23b280afe61.png)

Analysis:
 - Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
   - Ground clearance and vehicle length are statistically likely to produce the most non-random variance to the mpg.
 - Is the slope of the linear model considered to be zero? Why or why not?
   - No. The slope coefficients of individual variables (vehicle length, ground clearance, AWD) are sigfnigantly not zero.
 - Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
   - Yes. This linear model does predict the MechaCar's MPG, as the adjusted R squared value for the model is 0.683.
 
## Summary Statistics on Suspension Coils
 
Total Summary:
 ![image](https://user-images.githubusercontent.com/41657419/229539414-0456af32-4562-41e7-b6cc-0d0b97bef354.png)

Lot Summary:
![image](https://user-images.githubusercontent.com/41657419/229539513-6f0ab0d4-e90f-4cac-9a06-c28507f26103.png)

Analysis:
 - The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
    - No, the current manufacturing design does not meet this requirement. While the overall variance is within this range (62.29), not all individual lots are compliant. Lots 1 and 2 are compliant, but Lot 3 shows a variance of 170.

## T-Tests on Suspension Coils

For the t-test, I am assuming a needed significance level of 0.05. Below is the t-test for the overall data set, and each individaul lot.

Overall t-test: ![image](https://user-images.githubusercontent.com/41657419/229541577-62a9daf3-eda4-464f-b9e4-2a914271178d.png)

Lot1 t-test: ![image](https://user-images.githubusercontent.com/41657419/229540851-7e376c95-6e93-41e7-9921-1509e3f2964b.png)

Lot2 t-test:![image](https://user-images.githubusercontent.com/41657419/229541686-ac48b126-977f-4d01-b70a-af9aaa65d164.png)

Lot3 t-test:![image](https://user-images.githubusercontent.com/41657419/229541794-1327af86-a906-450a-a506-c1097d98ed0c.png)

Analysis:
 - The p-value of three of the tests (Overall 0.06, Lot1 1.0, Lot2 0.061) is above the needed significance level, and therefore there is not enough support to reject the null hypothesis.
 - The p-value of the Lot3 test is 0.04, which is below the needed level. Lot3 has the opportunity to reject the null hypothesis.

## Study Design: MechaCar vs Competition

To further analyze the MechaCar vs it's competition, I would want to study the maintenance costs as compared to the horsepower. The reason for this is that many consumers consider the upfront costs when purchasing a car, but mainenance can often be a surprise cost. If the MechaCar proves to have better maintenance costs than it's competition, this would be a good sales pitch and marketing content.

My alternative hypothesis is that the MechaCar will have lower maintenance costs than those with similar horsepower.

To complete the analysis, I would need data from MechaCar and it's competitors for both horsepower and maintenance costs.
