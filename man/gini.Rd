\name{gini}
\alias{gini}
\title{Compute the Gini Coefficient}
\description{
 computes the Gini coefficient based on (possibly weighted) sample data
}
\usage{
 gini(x,  weights=rep(1,length=length(x)))
}
\arguments{
 \item{x}{a vector containing at least non-negative elements}
 \item{weights}{an optional vector of sample weights for \code{x}}
}
\details{\code{Gini} is the Gini coefficient, a common measure of inequality
within a distribution. It is commonly used to measure income inequality.
It is defined as twice the area between the 45 degree line
and a Lorenz curve, where the Lorenz curve is a graph describing the share of
total income T accruing to the poorest fraction p of the population.

In typical use the values of \code{x} are the incomes of individuals from a survey
and the \code{weights} are the corresponding survey weights.
If the values of \code{x} are the mean incomes within income classes and the
weights \code{weights} are the corresponding population proportions within those
classes, the function computes an estimate of the Gini coefficient of the
underlying income distribution. 
}
\value{
  the Gini coefficient (between 0 and 1).
}
\source{\emph{Relative Distribution Methods in the Social Sciences},
by Mark S. Handcock and Martina Morris, Springer-Verlag, Inc., New York, 1999.
ISBN 0387987789.}

\references{
\emph{Relative Distribution Methods in the
Social Sciences}, by Mark S. Handcock and Martina Morris,
Springer-Verlag, Inc., New York, 1999. ISBN 0387987789.

\emph{Divergent Paths: Economic Mobility in the New
American Labor Market}, Russell Sage Foundation, New York, June 2001
Annette D. Bernhardt, Martina Morris, Mark S. Handcock and Marc Scott.

\emph{Measurement of Inequality}, by F. A. Cowell, in A. B. Atkinson /
 F. Bourguignon (Eds): Handbook of Income Distribution, Amsterdam, 2000.

\emph{Measuring Inequality}, by F. A. Cowell, Prentice Hall/Harvester 
Wheatshef, 1995.
}

\author{Mark S. Handcock \email{handcock@stat.washington.edu}}

\seealso{\code{\link{reldist}}, \code{\link{nls}}}

\examples{
# generate vector (of incomes)
x <- c(541, 1463, 2445, 3438, 4437, 5401, 6392, 8304, 11904, 22261)
# compute Gini coefficient
gini(x)
# generate a vector of weights.
w <- runif(n=length(x))
gini(x,w)
#
# Compute the inequality in income growth for the recent cohort of the
# National Longitudinal Survey (NLS) initiated in 1979.
#
library(reldist)
data(nls)
help(nls)
# Compute the wage growth
y <- exp(recent$chpermwage)
# Compute the unweighted estimate
gini(y)
# Compute the weighted estimate
gini(y,w=recent$wgt)
}
\keyword{univar}
