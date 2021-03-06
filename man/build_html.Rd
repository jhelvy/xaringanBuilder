% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/html.R
\name{build_html}
\alias{build_html}
\title{Build xaringan slides as html file.}
\usage{
build_html(input, output_file = NULL)
}
\arguments{
\item{input}{Path to Rmd file of xaringan slides.}

\item{output_file}{The name of the output file. If using NULL then
the output filename will be based on filename for the input file.
If a filename is provided, a path to the output file can also be provided.}
}
\description{
Build xaringan slides as html file. Essentially the same thing as
`rmarkdown::render()` with `output_format = "xaringan::moon_reader"`
}
\examples{
\dontrun{
# Build html from Rmd file
build_html("slides.Rmd")
}
}
