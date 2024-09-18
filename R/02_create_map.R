# create_map function -----------------------------------------------------

# Function to create map using boundary data & leaflet

create_map <- function(boundary) {
  
  if (!require(leaflet)) {
    
    stop("leaflet not installed")
    
  } else {
    if (!require(leaflet.extras)) {
      
      stop("leaflet.extras not installed")
      
    } else {
      
      attr <- paste('© <a href="https://openstreetmap.org/copyright/%22">OpenStreetMap </a> under <a href="https://opendatacommons.org/licenses/odbl/">ODbL</a>.',
                    'Contains ONS  data licenced under <a href="https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/">OGL3</a>.',
                    'Licenced under <a href="https://github.com/douglasmunro/ld_map">MIT</a>.',
                    sep = " ")
      
      map <- leaflet() |> 
        addTiles(attribution = attr) |> 
        addPolygons(
          data = boundary,
          color = "#006548", 
          opacity = 0.8,
          fillOpacity = 0
          ) |> 
        leaflet.extras::addSearchOSM() |> 
        leaflet.extras::addResetMapButton()
    
      return(map)
    }
  }
}
