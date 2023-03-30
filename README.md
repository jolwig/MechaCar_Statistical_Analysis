# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
For the first part of this analysis, I created a linear regression model to predict MPG for MechaCar cars. To create this model, I first read the data from a csv file and then I used the lm() and summary() functions to produce the model. Here are the findings:

![p-value](https://github.com/jolwig/MechaCar_Statistical_Analysis/blob/main/MechaCar_analysis/p-value.png)
* Vehichle_length and ground_clearance are least likley to provide a non-random vairance to mpg
* The p-value is 5.35e-11 which is smaller than the significance level of 0.05 which means the slope of the linear model is not 0.
* R-squared is 0.715 which means that 71.5% of future data will be able to fit the model, therefore the linear model will predict mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils
![total_summary](https://github.com/jolwig/MechaCar_Statistical_Analysis/blob/main/MechaCar_analysis/total_summary.png)
![lot_summary](https://github.com/jolwig/MechaCar_Statistical_Analysis/blob/main/MechaCar_analysis/lot_summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The total variance for all of the lots is 62.29, which meets the criteria. Both lots 1 and 2 had a variance well bellow 100 but lot 3 had a variance of 170.29 which is above the maximum limit.

## T-Tests on Suspension Coils
Here are the results and findings from the t-tests:

T-test for All Lots

![t-test all lots](https://github.com/jolwig/MechaCar_Statistical_Analysis/blob/main/MechaCar_analysis/t-test_all_lots.png)

The p-value for all lots is 0.06, which means there is not enough evidence to reject the null hypothesis. The mean psi for all lots is not statistically different from the population mean of 1500.

T-test for Lot 1
![t-test lot 1](https://github.com/jolwig/MechaCar_Statistical_Analysis/blob/main/MechaCar_analysis/t-test_lot_1.png)

The p-value for lot 1 is 1, which means there is not enough evidence to reject the null hypothesis. The mean psi for lot 1 is not statistically different from the population mean of 1500.

T-test for Lot 2
![t-test lot 2](https://github.com/jolwig/MechaCar_Statistical_Analysis/blob/main/MechaCar_analysis/t-test_lot_2.png)

The p-value for lot 2 is 0.6, which means there is not enough evidence to reject the null hypothesis. The mean psi for lot 2 is not statistically different from the population mean of 1500.

T-test for lot 3
![t-test lot 3](https://github.com/jolwig/MechaCar_Statistical_Analysis/blob/main/MechaCar_analysis/t-test_lot_3.png)

The p-value for lot 3 is 0.04, which means there is enough evidence to reject the null hypothesis. The mean psi for lot 3 is statistically different from the population mean of 1500.


## Study Design: MechaCar vs Competition
One of the factors that people care about the most when buying a car is the cars appearence. It could be useful to perform an analysis that compares the style ratings of MechaCar cars against competitor cars. We can get this data by paying random subjects to participate in a blind survey where they rate the cars appearance without knowing the brand. We could test the results of the survey by using a one-tailed t-test to determine if there is a difference between MechaCar and a competitor group. The null hypothesis is that there is no statistical difference between the style rating of the two groups. The alternative hypotheseis is that MechaCar does have a higher style rating than the competitor group.
