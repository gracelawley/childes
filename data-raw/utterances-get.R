# Subset of utterances from CHILDES database version 2018.1 ---------------

library(here)
library(purrr)
library(dplyr)
library(readr)
library(childesr)
library(tidytext)

corpora <- c("Bloom70", "Braunwald", "Brown", "Clark", "Cornell", "Demestras1",
             "EllisWeismer", "Hall", "Kuczaj", "MacWhinney", "Sachs", "Suppes",
             "Warren", "Weist")

collections <- c(rep("Eng-NA", 6), "Clinical-MOR", rep("Eng-NA", 7))


utterances_df <- map2(collections, corpora,
                      ~ childesr::get_utterances(collection = .x, corpus = .y,
                                                 role = "Target_Child",
                                                 db_version = "2018.1")) %>%
  bind_rows()


readr::write_csv(utterances_df, here::here("data-raw", "utterances.csv"))
