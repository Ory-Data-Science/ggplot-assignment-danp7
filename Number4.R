#load library
library(tidyverse)


#load data from the internet, using tabs to seperate and replacing -999, etc with NA's 
dat <- read.csv(url("http://www.esapubs.org/archive/ecol/E088/096/avian_ssd_jan07.txt"),
                sep = "\t", na.strings = c(-999, -999.0))


#your code goes here

print(dat)

ggplot(data = dat, aes(x = F_mass)) + # says the data used is dat, and F_mass is the variable we are going to use.
  labs(x = "Female Mass(g)") +
  geom_histogram() # makes a histogram.


ggplot(data = dat, aes(x = F_mass)) +
  labs(x = "Female Mass(g)") +
  geom_histogram(fill = "blue") #This fills in the color as blue. 
  scale_x_log10() + # Same as question 3.Just changes the scale.  
  
    
ggplot(data = dat, aes(x = F_mass)) + #female mass is the normal graph
  geom_histogram(aes(x = M_mass), alpha = 0.3) +  # male mass is the light blue. You can double the graph.
  geom_histogram(fill = "blue", alpha = 0.3) + # This line here indicates that you  going to make the the fill blue.
  scale_x_log10() + 
  labs(x = "Female Mass(g)") 


ggplot(data = dat, aes(x = F_mass)) +
  geom_histogram(fill = "blue", alpha = 0.3) +
  geom_histogram(aes(x = M_mass), alpha = 0.3) +
  scale_x_log10() +
  labs(x = "Female Mass(g)") +
  facet_wrap(~ Family) #Same code as above but now you facet wrap based on family to sort things out.
  

