#' child_types
#'
#' A data frame containing the counts of word types in \code{childes_tokens}
#' across all 14 corpora.
#'
#'
#' @docType data
#'
#' @format A data frame with 19,375 rows and 2 columns:
#' \describe{
#'   \item{\code{type}}{a character denoting a word type}
#'   \item{\code{n_type}}{number of occurences of word across all 14 corpora}
#' }
#'
#' @source Data is from the CHILDES Database (\url{https://childes.talkbank.org}) and is accessed using the \code{childesr} package (\url{https://github.com/langcog/childesr}).
#'
"childes_types"
