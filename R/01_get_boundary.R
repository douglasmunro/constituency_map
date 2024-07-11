# get_boundary function ---------------------------------------------------

# Function to obtain constituency boundary data from ONS Open Geography Portal

get_boundary <- function(constituency_name) {
  if (!require(sgapi)) {
    
    stop("sgapi not installed")
    
  } else {
    boundary <- get_boundaries_areaname("Westminster_Parliamentary_Constituencies_July_2024_Boundaries_UK_BFE",
                        col_name_var = "PCON24NM",
                        chosen_constituency_list = c(constituency_name)) 
    } 
    return(boundary)
}