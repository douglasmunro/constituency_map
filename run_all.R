# function libraries 
library(sgapi) 
library(leaflet)
library(leaflet.extras)
library(htmlwidgets)

# script libraries
library(readr)
library(dplyr)

# load functions
source("./R/05_constituency_map.R")

# load new Lib Dem constituencies 
new_seats <- read_csv("./data/constituencies.csv", 
                     col_select = c(name, new_mp)) |> 
  filter(new_mp == TRUE) |> 
  select(!new_mp) |> 
  pull()

# create a map for each constituency                      
for (seat in new_seats) {
  constituency_map(seat)
}

