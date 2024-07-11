# constituency_map function -----------------------------------------------

# Wrapper function to create and save map

constituency_map <- function(constituency_name) {
  # import functions
  source("./R/01_get_boundary.R")
  source("./R/02_create_map.R")
  source("./R/04_save_map.R")
  
  # build map
  get_boundary(constituency_name) |> 
    create_map() |> 
    save_map(constituency_name)
}