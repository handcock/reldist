\name{reldist-internal}
\title{Internal reldist Objects}

\alias{rcdist}
\alias{rddata}
\alias{rddist}
\alias{rdeciles}
\alias{really.missing}
\alias{relasp}
\alias{rmdata}
\alias{rpluy}
\alias{rpy}
\alias{wtd.mean}
\alias{wtd.median}
\alias{wtd.var}
%
% These need to be documented!
%
\alias{entropy}
\alias{rdsamp}

\description{
  Internal reldist functions.
}
\usage{
entropy(x,xo=FALSE)
}
\details{
  Most of these are not to be called by the user.
}
\arguments{
 \item{x}{a list with components \code{x} and \code{y}. The vector \code{y} are
the relative density estimates at the values in the vector
\code{x}. The latter are in the unit interval.}
 \item{xo}{a list with components \code{x} and \code{y} like the first argument. If given the relative entropy (or Kullback-Liebler divergence) of the first to the second argument is calculated.}
%\item{\dots}{further arguments passed to or used by methods.}
}
 \value{If \code{xo} is given, the relative entropy (or Kullback-Liebler divergence) of the first to the second argument is calculated. Otherwise the entropy of the distribution specified by \code{x}.}
\seealso{reldist}
\keyword{internal}
