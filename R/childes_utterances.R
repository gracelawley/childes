#' child_utterances
#'
#' A data frame containing utterances of children from 14 corpora in the
#' CHILDES database (2018.1).
#'
#'
#' @docType data
#'
#' @format A data frame with 237,577 rows representing individual utterances and 7 columns:
#' \describe{
#'   \item{\code{collection}}{a factor denoting the CHILDES collection of the corpus}
#'   \item{\code{corpus}}{a factor denoting corpus name}
#'   \item{\code{child}}{a character string giving the child's name}
#'   \item{\code{sex}}{a factor giving the child's sex}
#'   \item{\code{age}}{a double giving the child's age}
#'   \item{\code{transcript_id}}{integer denoting the transcript ID of an utterance}
#'   \item{\code{utterance}}{a character string giving an utterance}
#' }
#'
#' @source Data is from the CHILDES Database (\url{https://childes.talkbank.org}) and is accessed using the \code{childesr} package (\url{https://github.com/langcog/childesr}).
#'
"childes_utterances"
