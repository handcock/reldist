\name{nls}
\alias{nls}
\alias{original}
\alias{recent}
\title{Permanent wage growth in two cohorts of the NLS}
\description{
These data are from two cohorts of the National Longitudinal Survey
(NLS) initiated in 1966 and 1979. The cohorts are referred to as the
`original' and the `recent' cohort, respectively.
The data represents the permanent wage
growth of each individual in the cohort from age 16 through
36. This was used in Handcock and Morris (1999) and Bernhardt,
Morris, Handcock and Scott (2001) to study the question of wage
mobility. A development of the estimation of these permanent
wages and their relevance to the study of wage mobility is
given in  Handcock and Morris (1999).  For the purposes of
this \code{reldist} package, we can regard the permanent
wages as measurements on two groups that we wish to compare.

The data set is comprised of two \code{data.frame}s  called
`original' and `recent'. Each has
three columns: \code{chpermwage}: the change in permanent wages 
(in log-dollars), \code{endeduc}: the final achieved
educational level (in years), and \code{wgt}: the sample weight.
}
\usage{
 data(nls)
}
\source{\emph{Relative Distribution Methods in the Social Sciences}, 
by Mark S. Handcock and Martina Morris, Springer-Verlag, Inc., New York, 1999. ISBN 0387987789.} 
\references{
\emph{Relative Distribution Methods in the
Social Sciences}, by Mark S. Handcock and Martina Morris,
Springer-Verlag, Inc., New York, 1999. ISBN 0387987789.

\emph{Divergent Paths: Economic Mobility in the New
American Labor Market}, Russell Sage Foundation, New York, June 2001
Annette D. Bernhardt, Martina Morris, Mark S. Handcock and Marc Scott.
}
\seealso{reldist}
\keyword{datasets}
