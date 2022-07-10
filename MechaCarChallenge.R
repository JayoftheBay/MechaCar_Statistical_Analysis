
#Deliverable 1
library(dplyr) #Import library

mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #create DataFrame

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mecha_table) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mecha_table)) #generate summary statistic

#Deliverable 2
library(tidyverse) #Import library

suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #create DataFrame

summarize_suspension <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=(sd(PSI))^2, SD=sd(PSI), .groups = 'keep') #create summary table

lot_summarize_suspension <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=(sd(PSI))^2, SD=sd(PSI), .groups = 'keep') #create lot summary table

t.test(suspension_table$PSI, mu=1500) #ttest for all PSI

t.test(subset(suspension_table, Manufacturing_Lot == "Lot1")$PSI, mu=1500) #ttest for Lot 1 PSI

t.test(subset(suspension_table, Manufacturing_Lot == "Lot2")$PSI, mu=1500) #ttest for Lot 2 PSI

t.test(subset(suspension_table, Manufacturing_Lot == "Lot3")$PSI, mu=1500) #ttest for Lot 3 PSI