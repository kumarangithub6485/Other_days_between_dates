library(dplyr)
library(tidyverse)
library(readxl)
#reading the table data from the excel
my_data <- read_excel("C:/Users/kthata/Desktop/Murari.xlsx")#Change the location of the file according to your machine
my_data # printing the data that contain in the excel

#Main Function
my_data_result <- my_data %>%
  group_by(Name) %>% 
  arrange(Date) %>%  
  mutate(diff = Date - lag(Date, default = first(Date))) %>%
  mutate(diff = round(diff/86400, digits = 2))
my_data_result

# converting the result in to dataframe
as.data.frame(my_data_result) 
