library(tidyverse)


### MPG REGRESSION

#import dataset
mpg <- read.csv('MechaCar_mpg.csv')

#create multiple linear regression
lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + 
     ground.clearance + AWD, data=mpg)
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + 
             ground.clearance + AWD, data=mpg))

### SUSPENSION COIL SUMMARY

#import dataset
coil <- read.csv('Suspension_Coil.csv')

coil_stats <- coil %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI),
            Variance_PSI=var(PSI), Stddev_PSI=sd(PSI))

### SUSPENSION COIL T-TEST

coil_1 <- coil %>% filter(Manufacturing_Lot=='Lot1')
coil_2 <- coil %>% filter(Manufacturing_Lot=='Lot2')
coil_3 <- coil %>% filter(Manufacturing_Lot=='Lot3')

t.test(coil$PSI,mu=1500)
t.test(coil_1$PSI, mu=1500)
t.test(coil_2$PSI, mu=1500)
t.test(coil_3$PSI, mu=1500)
