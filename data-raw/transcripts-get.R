# Subset of Transcripts from CHILDES database version 2018.1 --------------

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


transcripts_df <- map2(collections, corpora,
                       ~ childesr::get_transcripts(collection = .x, corpus = .y,
                                                   db_version = "2018.1")) %>%
  bind_rows()


readr::write_csv(transcripts_df, here::here("data-raw", "transcripts.csv"))
