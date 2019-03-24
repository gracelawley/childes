# Global types: word counts across all corpora/children -------------------

library(here)
library(readr)
library(usethis)
library(dplyr)


childes_tokens <- readr::read_csv(here::here("data-raw", "childes_tokens.csv"),
                                  col_types = cols(collection = col_factor(),
                                                   corpus = col_factor(),
                                                   sex = col_factor()))



childes_types <- childes_tokens %>%
  count(token) %>%
  rename(type = token, n_type = n)



readr::write_csv(childes_tokens, here::here("data-raw", "childes_types.csv"))
usethis::use_data(childes_types, overwrite = T)



