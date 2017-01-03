library(tidyverse)

battles <- read_csv("data-raw/NPS-CWbattlesummaries5.csv")

latlong <- read_csv("https://raw.githubusercontent.com/jrnold/acw_battle_data/master/rawdata/nps_combined/latlong.csv")

battles2 <- battles %>%
  left_join(latlong, by = c("CWSAC Ref" = "cwsac_id")) %>%
  mutate(total_casualties = as.numeric(gsub(",", "", `Total Est. Casualties`)), 
         us_casualties = as.numeric(gsub(",", "", `US Est. Casualties`)), 
         cs_casualties = as.numeric(gsub(",", "", `CS Est. Casualties`))) 

write_csv(battles2, "data-raw/cw_battles.csv")
