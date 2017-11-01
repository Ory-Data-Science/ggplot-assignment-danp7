#load library
library(tidyverse)

#load data
dat <- read.csv(url("http://esapubs.org/archive/ecol/E084/093/Mammal_lifehistories_v2.txt"), 
                sep = "\t", nrows = 1440, na.strings = c("-999.00", "999.00")) # \t means tab. na.strings takes out data that can't be used.

#rest of your code goes here

print(dat) # This line shows what we are working with. 

ggplot(data = dat, aes(x = mass.g., y = newborn.g.)) + #aes(x = mass.g and y = newborn.g) asigns the x and y values of the graph.
  labs(x = "Adult Mass", y = "Newborn Mass") + #labs is short for labels. #aes is short aesthetics and it should be noted that 
  geom_point() # This line here determines what kind of graph the ggplot is going to be. For example gg plot geom_histogram()
#geom_point makes an actual scatterplot. 

ggplot(data = dat, aes(x = mass.g., y = newborn.g.)) + #Using dat the assigned value for the csv, x and y are columns in the csv
  labs(x = "Adult Mass", y = "Newborn Mass") + #This line labels everything, pretty straight forward
  scale_x_log10() + #gg plot  can manipulate the scale in this following manner
  scale_y_log10() + # Interestingly you can choose different scales for your plots. Like scale_y_sqrt() or scale_y_reverse() 
  geom_point()

ggplot(data = dat, aes(x = mass.g., y = newborn.g., color = order)) + # Adding color = order is a lazy but effective way
  labs(x = "Adult Mass", y = "Newborn Mass") +                        # To ensure that all of the different types of orders are colored differently.
  scale_x_log10() +
  scale_y_log10() +
  geom_point()

ggplot(data = dat, aes(x = mass.g., y = newborn.g.)) +
  labs(x = "Adult Mass", y = "Newborn Mass") +
  scale_x_log10() +
  scale_y_log10() +
  geom_point() +
  facet_wrap(~ order, nrow = 4, ncol = 5) # facets are a way to wrap a certain variable that everything else is related to, in this case order.

ggplot(data = dat, aes(x = mass.g., y = newborn.g.)) +
  labs(x = "Adult Mass", y = "Newborn Mass") +
  scale_x_log10() +
  scale_y_log10() +
  geom_point() +
  geom_smooth(method = "lm") + # method = lm makes it a linear model, geom_smooth just makes the actual blue line.
  facet_wrap(~ order, nrow = 4, ncol = 5)





