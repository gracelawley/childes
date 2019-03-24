# childes

This package contains datasets created from a collection of 14 English child language corpora in the Child Language Data Exchange System (CHILDES) (https://childes.talkbank.org). More information about the individual corpora can be found via the CHILDES website.

## The 14 Corpora

* [Bloom70](https://childes.talkbank.org/access/Eng-NA/Bloom70.html)
* [Braunwald](https://childes.talkbank.org/access/Eng-NA/Braunwald.html)
* [Brown](https://childes.talkbank.org/access/Eng-NA/Brown.html)
* [Clark](https://childes.talkbank.org/access/Eng-NA/Clark.html)
* [Cornell](https://childes.talkbank.org/access/Eng-NA/Cornell.html)
* [Demetras-Trevor](https://childes.talkbank.org/access/Eng-NA/Demetras1.html)
* [EllisWeismer](https://childes.talkbank.org/access/Clinical-MOR/EllisWeismer.html)
* [Hall](https://childes.talkbank.org/access/Eng-NA/Hall.html)
* [Kuczaj](https://childes.talkbank.org/access/Eng-NA/Kuczaj.html)
* [MacWhinney](https://childes.talkbank.org/access/Eng-NA/MacWhinney.html)
* [Sachs](https://childes.talkbank.org/access/Eng-NA/Sachs.html)
* [Suppes](https://childes.talkbank.org/access/Eng-NA/Suppes.html)
* [Warren](https://childes.talkbank.org/access/Eng-NA/Warren.html)
* [Weist](https://childes.talkbank.org/access/Eng-NA/Weist.html)


## Inclusion/Exclusion Criteria

This subset of corpora was chosen from the English North American collection of CHILDES based on the following criteria.

### Corpora

* Part of the Eng-NA section of CHILDES
* Sufficient information about the details of the study and corpus is available

### Participants

* 36-96 months old
* English as first and primary language
* No reported gross sensory impairments (e.g. hearing impairment), congenital defects, developmental disabilities, or atypical development
* No significant/regular exposure to another language (i.e. 75% or higher consistent exposure to a language other than English)

### Language Sampling Procedure

* Naturalistic and unscripted elicitations (in either naturalistic or laboratory settingss)
* Intelligible speech
* One-on-one conversations (e.g. child-examiner conversations or parent-child conversations)
  + Can be child-child conversations as long as both children meet the participant requirements
  + No conversations amongst a group of children
* No reading from books, etc.
* No restricted vocabulary that is caused by the structure of the study or the experiment design
  + e.g. no samples of free play sesssions for multiple participants that each involve the same set of experimenter-provided toys
No structured speech
  + e.g. speech from an interview that has been tailored for a specific experimental interest(s)


## Datasets

This package currently contains three datasets:

* `childes_utterances`: utterances of children from the 14 corpora
* `childes_tokens`: tokenized utterances of children from the 14 corpora
* `childes_types`: counts of words types in `childes_tokens` across all 14 corpora


## Installation

``` r
# install.packages("remotes")
remotes::install_github("gracelawley/childes")
```

## CHILDES Usage Rules

CHILDES is a part of the TalkBank database and asks users to follow the data usage rules found [here](https://talkbank.org/share/rules.html).
