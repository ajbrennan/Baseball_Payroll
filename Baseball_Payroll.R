library(dplyr)
baseball <- read.csv("/Users/anthonybrennan/Documents/Econometrics Project/BaseballData.csv")
baseball <- baseball %>%
  mutate(Wins_change=Wins-Wins_prev_year,
         Payroll_change=Payroll-Payroll_prev_year,
         Attendance_change=Attendance-Attendance_prev_year,
         AvgPay_change=Avg_payroll-Avg_payroll_prev_year) %>%
  rename(Wins_minus="Wins_prev_year")
summary(baseball$Wins_change)
sd(baseball$Wins_change)
summary(baseball$Payroll_change)
sd(baseball$Payroll_change)
summary(baseball$Payroll)
sd(baseball$Payroll)
summary(baseball$Attendance_change)
sd(baseball$Attendance_change)
summary(baseball$Attendance)
sd(baseball$Attendance)
summary(baseball$Wins_minus)
sd(baseball$Wins_minus)
summary(baseball$AvgPay_change)
sd(baseball$AvgPay_change)

summary(lm(Wins_change~Payroll_change+Payroll+Attendance_change+Attendance+Wins_minus+AvgPay_change, baseball))
summary(lm(Wins_change~Payroll_change+Payroll+Wins_minus+AvgPay_change, baseball))
