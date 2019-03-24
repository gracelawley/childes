# Only include utterances from filtered transcripts  ----------------------


library(here)
library(dplyr)
library(readr)
library(stringr)
library(tidyr)



transcripts_fil <- readr::read_csv(here::here("data-raw", "transcripts_filtered.csv"))
utterances_raw <- readr::read_csv(here::here("data-raw", "utterances.csv"))

# filter against transcripts
utterances_fil <- utterances_raw %>%
  drop_na(gloss) %>%
  semi_join(transcripts_fil, by = "transcript_id")


readr::write_csv(utterances_fil, here::here("data-raw", "utterances_filtered.csv"))
