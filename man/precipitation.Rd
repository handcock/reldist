\name{precipitation}
\docType{data}
\alias{precipitation}
\title{Annual Precipitation in US Cities}
\description{
  The average amount of precipitation (rainfall) in inches for each of
  70 United States (and Puerto Rico) cities.
}
\usage{precipitation}
\format{
  A named vector of length 70.
}
\source{
  Statistical Abstracts of the United States, 1975.
}
\references{
  McNeil, D. R. (1977)
  \emph{Interactive Data Analysis}.
  New York: Wiley.
}
\details{This is a clone of the \code{precip} R dataset to avoid a bug in R.}
\examples{
require(graphics)
data(precipitation)
dotchart(precipitation[order(precipitation)], main = "precipitation data")
title(sub = "Average annual precipitation (in.)")
}
\keyword{datasets}
