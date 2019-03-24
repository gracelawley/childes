# Clean up and save CHILDES subset ----------------------------------------

library(here)
library(dplyr)
library(readr)
library(usethis)


utterances_fil <- readr::read_csv(here::here("data-raw", "utterances_filtered.csv"),
                                  col_types = cols(media_end = col_double(),
                                        media_start = col_double(),
                                        media_unit = col_character()))

childes <- utterances_fil %>%
  select(collection = collection_name, corpus = corpus_name,
         child = target_child_name, sex = target_child_sex,
         age = target_child_age, transcript_id,
         utterance = gloss)



childes_utterances <- childes %>%
  mutate(collection = parse_factor(collection, levels = c("Eng-NA", "Clinical-MOR")),
         corpus = parse_factor(corpus, levels = c("Bloom70", "Braunwald", "Brown",
                                                  "Clark", "Cornel", "Demestras1",
                                                  "EllisWeismer", "Hall", "Kuczaj",
                                                  "MacWhinney", "Sachs", "Suppes",
                                                  "Warren", "Weist")),
         sex = parse_factor(sex, levels = c("male", "female")))



readr::write_csv(childes_utterances, here::here("data-raw", "childes_utterances.csv"))
usethis::use_data(childes_utterances, overwrite = T)

