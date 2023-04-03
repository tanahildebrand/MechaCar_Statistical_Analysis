#Part 1: Linear Regression to Predict MPG
library(dplyr)
library(tidyverse)
MechaCar <- read.csv("Data/MechaCar_mpg.csv")

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))

#Part 2: Create Visualizations for the Trip Analysis
Suspension_Coil <- read.csv("Data/Suspension_Coil.csv")
total_summ <- summarize(Suspension_Coil, Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summ <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups='keep')

#Part 3: T-Tests on Suspension Coils
?t.test()

t.test(Suspension_Coil$PSI, mu=1500)

lot1 <- Suspension_Coil %>% subset(Manufacturing_Lot=='Lot1') %>% select(PSI)
t.test(lot1,mu=1500)

lot2 <- Suspension_Coil %>% subset(Manufacturing_Lot=='Lot2') %>% select(PSI)
t.test(lot2,mu=1500)

lot3 <- Suspension_Coil %>% subset(Manufacturing_Lot=='Lot3') %>% select(PSI)
t.test(lot3,mu=1500)
