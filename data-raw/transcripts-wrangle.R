# Fix various issues in transcript metadata & subset ----------------------


library(here)
library(dplyr)
library(readr)
library(stringr)


transcripts_raw <- readr::read_csv(here::here("data-raw", "transcripts.csv"))


transcripts <- transcripts_raw %>%

  # Removing Weist problem rows to handle separately and add back in later
  filter(corpus_name != "Weist" |
           corpus_name == "Weist" & !is.na(target_child_age)) %>%

  # Handling Braunwald exception case
  filter(corpus_name != "Braunwald" |
           corpus_name == "Braunwald" & str_count(filename, "0diary") == 0) %>%

  # Handling Cornell exception case
  filter(corpus_name != "Cornell" |
           corpus_name == "Cornell" & (str_count(filename, "lsno") == 1 |
                                         str_count(filename, "sch") == 1)) %>%

  # Handling EllisWeismer exception case
  filter(corpus_name != "EllisWeismer" |
           corpus_name == "EllisWeismer" & str_count(filename, "latetalkers") == 0 &
           str_count(filename, "ec/") == 0 &
           str_count(filename, "pc/") == 0) %>%

  # Handling MacWhinney exception case
  filter(corpus_name != "MacWhinney" |
           corpus_name == "MacWhinney" & str_count(filename, "01diary") == 0)



# Handling the Weist exception case
weist_corrected_rows <- transcripts_raw %>%

  # Extracting the issue rows
  filter(corpus_name == "Weist" & is.na(target_child_age)) %>%

  # Calculating the missing target_child_age values using info in the filename values
  mutate(year = as.numeric(str_extract(filename, '[:digit:]{2}')),
         month = as.numeric(str_extract(filename, '(?<=[:digit:]{2})[:digit:]{2}')),
         target_child_age = year * 12 + month) %>%
  select(-year, -month) %>%

  # Fixing the missing target_child_name values using info in the filename value
  mutate(target_child_name = str_extract(filename, '(?<=Weist/)[:alpha:]+(?=/)')) %>%

  # Fixing the missing target_child_sex values
  mutate(target_child_sex = case_when(
    target_child_name == 'Emily' ~ 'female',
    target_child_name != 'Emily' ~ 'male')) %>%

  # Fixing the missing target_child_id values (except for Ben)
  mutate(target_child_id = case_when(
    target_child_name == 'Emily' ~ 4872,
    target_child_name == 'Matt' ~ 4898,
    target_child_name == 'Roman' ~ 4909))



transcripts <- transcripts %>%
  bind_rows(weist_corrected_rows) %>%
  # filter against age criterion
  filter((target_child_age >= 36.0 & target_child_age <= 96.0))


readr::write_csv(transcripts, here::here("data-raw", "transcripts_filtered.csv"))


