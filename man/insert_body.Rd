% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/insert_body.R
\name{insert_body}
\alias{insert_body}
\title{Insert the Body Into a Template}
\usage{
insert_body(template, body)
}
\arguments{
\item{template}{A template that has been created using
\code{highlight_template}.}

\item{body}{The text body (a character vector).}
}
\value{
Returns a template with a body inserted (character vector).
}
\description{
Insert the body into a template that has been created using
\code{highlight_template}.
}
\examples{
marks <- c(pos = "lightgreen", neg = "pink", neutral = "yellow")

temp <- highlight_template(marks)
body <- paste0("I like <mark class=\\"pos\\">good</mark>",
    " <mark class=\\"neutral\\">fish</mark>",
    ", but <mark class=\\"neg\\">bad</mark> <mark class=\\"neutral\\">fish</mark>",
    " is <mark class=\\"neg\\">gross</mark>.")

template2html(insert_body(highlight_template(marks), body), file="")
\dontrun{
## To an external file
template2html(insert_body(highlight_template(marks), body))
open_html()
}
}

