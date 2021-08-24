View(airquality)

library(tidyverse)
library(tibble)


air_quality_june <- airquality %>% 
  filter(Month == 6) %>% 
  select(Month, Temp, Wind, Day, Solar.R, Ozone) %>% 
  filter(Wind >= 8) 

colSums(is.na(air_quality_june))


summary(air_quality_june)

air_quality_june_plot <- ggplot(data = air_quality_june, aes(x = Ozone, y = Solar.R)) +
  geom_point()


air_quality_june_plot


temp_finder <- function(month_num, day_num){
  day_temp <- filter(airquality, month_num == Month, day_num == Day)
  return(day_temp$Temp)
}

temp_finder(5, 1)


wind_function <- function(day, month){

wind_df <- tribble(~day, ~month, ~wind,
                   1, 8, 10,
                   1, 9, 12, 
                   1, 10, 14,
                   1, 11, 16, 
                   1, 12, 18) 


    
  return(wind)
  }

  
wind_function(1, 8)  



