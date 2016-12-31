library(sf)
library(tidyverse)

ctys <- st_read(dsn = "data-raw/nhgis0074_shape/nhgis0074_shape/nhgis0074_shapefile_tl2008_us_county_1880", layer = "US_county_1880_conflated", stringsAsFactors = FALSE)

df <- read_csv("data-raw/nhgis0074_csv/nhgis0074_csv/nhgis0074_ds23_1880_county.csv")
