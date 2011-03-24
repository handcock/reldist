\name{wtd.iqr}
\alias{wtd.iqr}
\alias{iqr}
\title{Weighted Interquartile range}
\description{
  Compute weighted Interquartile range (iqr)
  }
\usage{
wtd.iqr (x, na.rm = FALSE, weight=FALSE)
} 
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ Vector of data, same length as \code{weight} }
  \item{na.rm}{Logical:  Should NAs be stripped before computation proceeds?}
  \item{weight}{ Vector of weights }
}
\details{
 Uses a simple algorithm based on sorting.
 }
\value{
  Returns an empirical interquartile range from a weighted sample.
}
\keyword{robust}
