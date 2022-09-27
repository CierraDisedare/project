library(tidyverse)

data <- read_csv("../data/Butterfly_data.csv")

filter_years ,_ function(dataset = data){
  new_data <- data %>% 
    filter(year > 1997)
  return(new_data)
}
