library(nycflights13)
library(tidyverse)

flights

flights |>
  filter(dest == "IAH") |> 
  group_by(year, month, day) |> 
  summarize(
    arr_delay = mean(arr_delay, na.rm = TRUE)
  )

flights 

flights |> 
  filter(dep_delay > 120)

glimpse(flights)
