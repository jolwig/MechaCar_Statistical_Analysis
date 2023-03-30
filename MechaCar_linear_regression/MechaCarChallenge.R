mpg_table <- read.csv(file='MechaCar_mpg.csv')#import MechaCar_mpg.csv
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table)#Find linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table))#Find p-value

suspension_coil_table <-read.csv(file='Suspension_Coil.csv', check.names=F,stringsAsFactors = F)#import suspension_coil.csv
total_summary <- suspension_coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), groups = 'keep') #create summary table for psi
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), groups = 'keep')#group manufacturing lot by mean median variance and sd
