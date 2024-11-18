library(sqldf)
library(tidyverse)

##Read in the data##
texas <- read.csv("Texas_county.csv")


##Create a clean data set with only the county and corresponding ranking information##
tx <- sqldf('select
              STCNTY,
              COUNTY as county,
              Rep_Dem,
              EPL_POV150,
              EPL_UNEMP,
              EPL_HBURD,
              EPL_NOHSDP,
              EPL_UNINSUR,
              EPL_AGE65,
              EPL_AGE17,
              EPL_DISABL,
              EPL_SNGPNT,
              EPL_LIMENG,
              EPL_MINRTY,
              EPL_MUNIT,
              EPL_MOBILE,
              EPL_CROWD,
              EPL_NOVEH,
              EPL_GROUPQ,
              SPL_THEME1,
              SPL_THEME2,
              SPL_THEME3,
              SPL_THEME4,
              SPL_THEMES,
              RPL_THEME1,
              RPL_THEME2,
              RPL_THEME3,
              RPL_THEME4,
              RPL_THEMES
      from texas')

usethis::use_data(tx)
