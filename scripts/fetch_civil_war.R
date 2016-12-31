library(tidyverse)
library(jsonlite)

battles_json <-"https://raw.githubusercontent.com/jrnold/acw_battle_data/master/rawdata/cws2/cws2.json"

battles <- fromJSON(battles_json)
