# Tokenize CHILDES subset utterances --------------------------------------

library(here)
library(readr)
library(usethis)
library(tidytext)
library(dplyr)


childes <- readr::read_csv(here::here("data-raw", "childes_utterances.csv"),
                           col_types = cols(collection = col_factor(),
                                            corpus = col_factor(),
                                            sex = col_factor()))


childes_tokens <- childes %>%
  unnest_tokens(output = token, input = utterance, token = "regex",
                pattern = "[:space:]", to_lower = FALSE)


readr::write_csv(childes_tokens, here::here("data-raw", "childes_tokens.csv"))
usethis::use_data(childes_tokens, overwrite = T)

