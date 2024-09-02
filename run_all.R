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

# load Lib Dem constituencies 
seats <- read_csv("./data/constituencies.csv", 
                     col_select = c(name)) |> 
   pull()

# create a map for each constituency                      
for (seat in seats) {
  constituency_map(seat)
}

