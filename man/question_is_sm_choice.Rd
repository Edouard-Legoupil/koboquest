% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/closure_defaults.R
\name{question_is_sm_choice}
\alias{question_is_sm_choice}
\title{Determine if a data column header is a logical choice column of a select_multiple question}
\usage{
question_is_sm_choice(question.name)
}
\arguments{
\item{question.name}{The xml name of a kobo question as a string. (as it appears in the kobo questionnaire and subsequently in the data column headers)}
}
\value{
\code{TRUE} if the question is listed as a logical column relating to a select_multiple type question in the questionnaire.
 \code{FALSE} if it isn't. \code{FALSE} if this could not be determined from the questionnaire.
}
\description{
Determine if a data column header is a logical choice column of a select_multiple question
}
\details{
To use this you must first successfully run \code{\link{load_questionnaire}}.
This does not derive the data type from any actual data; it only looks up the type defined in the questionnaire.
If type identification fails, the default return value is \code{FALSE}.This happens in the following cases:
\itemize{
  \item No questionnaire has been loaded with \code{\link{load_questionnaire}}
  \item \code{question.name} could not be found in the questionnaire, or in the data that was supplied to \code{\link{load_questionnaire}}
}
}
\examples{
question_is_sm_choice("a_select_multiple_question_name.a_choice_name") # TRUE
question_is_sm_choice("a_question_name") # FALSE
question_is_sm_choice("a_select_one_question_name") # FALSE
question_is_sm_choice("some_unidentified_string") # FALSE
}
\seealso{
\code{\link{load_questionnaire}} must be run first.
Use \code{\link{question_type}} for the most generalised way to guess the data type.
Part of the \code{question_is_*} family of functions:
testing for specific types:
\code{\link{question_is_numeric}},
\code{\link{question_is_categorical}},
\code{\link{question_is_select_one}},
\code{\link{question_is_select_multiple}},
\code{\link{question_is_sm_choice}}

parsing kobo skip-logic:
\code{\link{question_is_skipped}}
}
