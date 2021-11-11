\name{resplot}
\title{Relative distribution plot to a Standard Normal}
\usage{
resplot(x,
       standardize=TRUE,
       xlab="Gaussian Cumulative Proportion",
       method="Bayes",
       \dots)
}
\alias{resplot}

\arguments{
  \item{x}{The first sample for \code{resplot}.}
  \item{standardize}{Should the sample be converted to standard units first?}
  \item{xlab}{plot labels.}
  \item{method}{Method used to estimate the relative density. The default
    (\code{"Bayes"}) uses a density estimator based on Poisson Nonparametric 
    Regression and Bayesian inference developed by Wand and Wu (2022).
    The option (\code{"bgk"}) uses a Gaussian kernel density estimator for bounded
    domain one-dimensional data developed by Botev, Grotowski and Kroese
    (2010). The option (\code{"gam"}) uses a local likelihood approach
    based on smoothed Poisson regression. The option \code{"loclik"} uses
    log-splines. The option \code{"quick"} uses the Anscombe transformation
    to stabilize variances. In versions prior to 1.3 the \code{"quick"}
    approach was used.}
  \item{\dots}{graphical parameters.}
}
\description{
  \code{resplot} produces a relative distribution of the values to a standard 
  normal.

  Graphical parameters may be given as arguments to \code{resplot}.
}
\value{
  A list with components summarizing the relative distribution. See
  \code{reldist} for the details.
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
resplot(y, method="bgk")
data(precipitation)
resplot(precipitation, ylab = "Precipitation [in/yr] for 70 US cities", method="bgk")
}
\keyword{hplot}
\keyword{distribution}
