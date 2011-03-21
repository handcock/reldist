\name{resplot}
\title{Relative distribution plot to a Standard Normal}
\usage{
resplot(x,
       standardize=TRUE,
       xlab="Gaussian Cumulative Proportion",
       \dots)
}
\alias{resplot}

\arguments{
  \item{x}{The first sample for \code{resplot}.}
  \item{standardize}{Should the sample be converted to standard units first?}
  \item{xlab}{plot labels.}
  \item{\dots}{graphical parameters.}
}
\description{
  \code{resplot} produces a relative distribution of the values to a standard 
  normal.

  Graphical parameters may be given as arguments to \code{resplot}.
}
\value{
  A list with components summarizing the relative distribution. See
  \code{reldist} fro the details.
}
%\references{
%  Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988)
%  \emph{The New S Language}.
%  Wadsworth \& Brooks/Cole.
%}
\seealso{
\code{\link{reldist}}.
}
\examples{
y <- rnorm(2000)
resplot(y)
data(precipitation)
resplot(precipitation, ylab = "Precipitation [in/yr] for 70 US cities")
}
\keyword{hplot}
\keyword{distribution}
