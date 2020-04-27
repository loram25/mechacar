# Mechacar Analysis
### Module 15 Challenge

### MPG Regression
The multiple linear regression predicts the mpg of MechaCar prototypes effectively, because the model has a strong correlation coefficient (Rsq = 0.7149) for estimating MPG. The variables which provide a non-random amount of variance to the mpg values are: vehicle length and ground clearance. The slope of the linear model is considered to NOT be zero, because we fail to reject the null hypothesis as the p-value is 5.35e-11.

### Suspension Coil Summary
There are 3 separate manufacturing lots with different descriptive statistics. I ran analysis for each lot to compare against the design specification. Lot 1 and 2 both have variances below 100 psi therefore meet the design spec. Lot 3 has a variance of 170, which is greater than 100 psi, therefore it does NOT meet the design spec.

### Suspension Coil T-Test
I created 3 separate datasets for each of the lots, then ran a 2-sided t-test with a 1500 psi population mean and 5% significance level. Our null hypothesis is the true mean of the sample set is equal to 1500 PSI. Lot 1 t-test returned a p-value of 1, therefore we fail to reject the null hypothesis and the true mean could equal 1500 psi. Lot 2 t-test returned a p-value of 0.61, therefore we fail to reject the null hypothesis and the true mean could equal 1500 psi. Lot 3 t-test returned a p-value of 0.04168, therefore we reject the null hypothesis and the true mean is not equal to 1500.

### Design Your Own Study
In the car industry, a good way to compare competition is to look at features (e.g. fuel efficiency, luxury options, safety ratings, storage space) versus cost. If we can analyze if the MechaCar prototype vehicle has a better cost position than competitors, we may be able to predict it outperforming the competition.

We need to collect data  which summarizes a car models fuel efficiency, luxury option, safety ratings, color options, storage space, and average used car price after 50,000 miles, and manufacturer and cost. Then we run a multiple linear regression with cost as our dependent variable and all variables listed above as independent. This model will allow us to determine the contribution of each of these features towards the overall price. Once we develop it, we will have a "performance baseline" model to plug our MechaCar data into to predict how it will perform.

For example, the model predicts the MechaCar prototype is $45,000. We can interpret this value has the "perceived value" of the car. Therefore if we price the car at $40,000, for example, we can assume the car will have an advantageous cost:feature position and outperform competitors.



The null hypothesis: the MechaCar prototype
