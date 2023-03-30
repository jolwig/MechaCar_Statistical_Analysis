mpg_table <- read.csv(file='MechaCar_mpg.csv')#import MechaCar_mpg.csv
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table)#Find linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table))#Find p-value

suspension_coil_table <-read.csv(file='Suspension_Coil.csv', check.names=F,stringsAsFactors = F)#import suspension_coil.csv
total_summary <- suspension_coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), groups = 'keep') #create summary table for psi
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), groups = 'keep')#group manufacturing lot by mean median variance and sd


t.test(suspension_coil_table$PSI, mu=1500)#t-test for all lots
t.test(subset(suspension_coil_table$PSI, suspension_coil_table$Manufacturing_Lot == "Lot1"), mu=1500)#t-test for lot 1
t.test(subset(suspension_coil_table$PSI, suspension_coil_table$Manufacturing_Lot == "Lot2"), mu=1500)#t-test for lot 2
t.test(subset(suspension_coil_table$PSI, suspension_coil_table$Manufacturing_Lot == "Lot3"), mu=1500)#t-test for lot 3
