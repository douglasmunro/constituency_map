# function libraries 
library(sgapi) 
library(leaflet)
library(leaflet.extras)
library(htmlwidgets)

# script libraries
library(readr)
library(dplyr)
library(progress)

# load functions
source("./R/05_constituency_map.R")

# load Lib Dem constituencies 
seats <- read_csv("./data/constituencies.csv", 
                     col_select = c(name)) |> 
   pull()

# create a map for each constituency   
pb <- progress_bar$new(total = 72)
f <- function() {
  pb$tick(0)
  Sys.sleep(3)
  for (seat in seats) {
    constituency_map(seat)
    pb$tick()
    Sys.sleep(1 / 72)
    cat("\n")
  }
}
f()