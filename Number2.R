# Load library
library(tidyverse)

#set up data frame for plotting
size_mr_data <- data.frame(
  body_mass = c(32000, 37800, 347000, 4200, 196500, 100000, 4290, 
    32000, 65000, 69125, 9600, 133300, 150000, 407000, 115000, 
    67000,325000, 21500, 58588, 65320, 85000, 135000, 20500, 1613,
    1618),
  metabolic_rate = c(49.984, 51.981, 306.770, 10.075, 230.073, 
    148.949, 11.966, 46.414, 123.287, 106.663, 20.619, 180.150, 
    200.830, 224.779, 148.940, 112.430, 286.847, 46.347, 142.863, 
    106.670, 119.660, 104.150, 33.165, 4.900, 4.865))

plot(size_mr_data$body_mass , size_mr_data$metabolic_rate , xlab = "Body Mass" , ylab = "Metabolic Rate")

log_body_mass <- log(size_mr_data$body_mass)
log_metabolic_rate <- log(size_mr_data$metabolic_rate)
    
plot(log(size_mr_data$body_mass) , log(size_mr_data$metabolic_rate) , xlab = "Log Body Mass" , ylab = "Log Metabolic Rate")

plot(size_mr_data$body_mass , size_mr_data$metabolic_rate , xlab = "Body Mass" , ylab = "Metabolic Rate" , log = "xy" )   

#code goes here

