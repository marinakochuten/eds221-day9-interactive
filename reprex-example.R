install.packages("reprex")
library(reprex)
library(tidyverse)
library(palmerpenguins)

ggplot(data = penguins, aes(x = bill_length_mm, y = flipper_length_mm)) |>
  geom_point()

## create a reprex to reproduce error
# create a mini dataset to work with
datapasta::df_paste(head(penguins, 5)[,c("bill_length_mm", "flipper_length_mm")])

##  here is my reprex
my_data <- data.frame(
     bill_length_mm = c(39.1, 39.5, 40.3, NA, 36.7),
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L)
)

# update code with mini dataset
ggplot(data = my_data, aes(x = bill_length_mm, y = flipper_length_mm)) |>
  geom_point()



