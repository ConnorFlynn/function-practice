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




airquality %>% 
  windy <- function(Day, Month) {
    return(Wind)
  }


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



