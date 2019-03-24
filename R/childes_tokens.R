#' child_tokens
#'
#' A data frame containing tokenized utterances of children from 14 corpora in
#' the CHILDES database (2018.1). This data frame is a tokenized version of the
#' \code{childes_utterances} data frame.
#'
#'
#' @docType data
#'
#' @format A data frame with 1,021,343 rows representing individual tokens and 7 columns:
#' \describe{
#'   \item{\code{collection}}{a factor denoting the CHILDES collection of the corpus}
#'   \item{\code{corpus}}{a factor denoting corpus name}
#'   \item{\code{child}}{a character string giving the child's name}
#'   \item{\code{sex}}{a factor giving the child's sex}
#'   \item{\code{age}}{a double giving the child's age}
#'   \item{\code{transcript_id}}{integer denoting the transcript ID of an utterance}
#'   \item{\code{token}}{a character string giving a token}
#' }
#'
#' @source Data is from the CHILDES Database (\url{https://childes.talkbank.org}) and is accessed using the \code{childesr} package (\url{https://github.com/langcog/childesr}).
#'
"childes_tokens"
