# save_map function -------------------------------------------------------

# Function for saving final html map

save_map <- function(map, constituency_name) {
  
  if (!require(htmlwidgets)) {
    
    stop("htmlwidgets not installed")
    
  } else {
    saveWidget(map, file = paste("./maps/", constituency_name, "_map.html", sep=""))
    
    # delete build files
    unlink(paste("./maps/", constituency_name, "_map_files", sep=""), recursive=TRUE)
  }
}