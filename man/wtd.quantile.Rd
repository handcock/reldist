\name{wtd.quantile}
\alias{wtd.quantile}
\title{Weighted Quantiles}
\description{
  Compute weighted quantile
  }
\usage{
wtd.quantile (x, q=0.5, na.rm = FALSE, weight=FALSE)
} 
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ Vector of data, same length as \code{weight} }
  \item{q}{ Quantile to compute }
  \item{na.rm}{Logical:  Should NAs be stripped before computation proceeds?}
  \item{weight}{ Vector of weights }
}
\details{
 Uses a simple algorithm based on sorting.
 }
\value{
  Returns an empirical q quantile from a weighted sample.
}
\keyword{robust}
