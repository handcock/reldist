\name{reldist}
\alias{reldist}
\title{Inference for Relative Distributions}
\description{
Estimate and graph relative distribution and density functions for continuous or discrete data.
}
\usage{
reldist(y, yo=FALSE, ywgt=FALSE,yowgt=FALSE,
  show="none", decomp="locadd",
  location="median", scale="IQR",
  rpmult=FALSE, 
  z=FALSE, zo=FALSE,
  smooth = 0.35, 
  quiet = TRUE, 
  cdfplot=FALSE,
  ci=FALSE,
  bar="no",
  add=FALSE,
  graph=TRUE, type="l",
  xlab="Reference proportion",ylab="Relative Density",yaxs="r",
  yolabs=pretty(yo), yolabslabs=NULL, 
  ylabs=pretty(y), ylabslabs=NULL,
  yolabsloc=0.6, ylabsloc=1, 
  ylim=NULL, cex=0.8, lty=1,
  binn=100,
  aicc=seq(0.0001, 5, length=30),
  deciles=(0:10)/10,
  discrete=FALSE,
  method="gam",
  \dots)
}
\arguments{
  \item{y}{Sample from comparison distribution.}
  \item{yo}{Sample from reference distribution.}
  \item{discrete}{Do \code{y} and \code{yo} refer to a 
   discrete distribution? If \code{TRUE} a discrete estimator is 
   used instead of the default continuous one.}
  \item{smooth}{Degree of smoothness required in the fit.
    Higher values lead to smoother curves, lower positive
    values lead to closer fits to the observed data.  If it is
    not specified the value that minimizes GCV is used. If a
    value less than zero is specified then the value is chosen
    to minimize a corrected AIC. If \code{discrete=TRUE}
    it is the minimum number of values to pool in the reference
    distribution in the probabiliy mass function estimate.}
  \item{method}{Method used to estimate the relative density. The default
    (\code{"gam"}) uses a local likelihood approach based on smoothed Poisson 
    regression. The option \code{"loclik"} uses log-splines. The option \code{"quick"} uses
    the Anscombe transformation to stabilize variances. In versions prior to
    1.3 the \code{"quick"} approach was used.}
  \item{graph}{Graph the results on the current device.}
  \item{bar}{Graph the deciles on the current device.  Possible values
    of \code{bar} are \code{"no"} (no deciles plotted), \code{"yes"}
    (deciles plotted with the non-parametric fit, \code{"only"}(deciles
    plotted without non-parametric fit).}
  \item{add}{Add the density to the current plot?}
  \item{ylim}{plotting limit for the vertical axis.}
  \item{lty}{Line type to be used for the density.}
  \item{xlab}{Horizontal label.}
  \item{ylab}{Vertical label.}
  \item{ylabs}{Locations for label to be added to the right axis.}
  \item{ylabslabs}{Labels indicating the original scale for the
comparison distribution.}
  \item{ylabsloc}{Distance of labels to right of axis (in lines).}
  \item{yolabs}{locations for labels to be added to the tip axis.}
  \item{yolabslabs}{Labels indicating the original scale for the
reference distribution.}
  \item{yolabsloc}{Distance of labels above axis (in lines).}
  \item{yaxs}{Style of vertical axis.}
  \item{cdfplot}{calculate and plot the CDF rather than the density.}
  \item{quiet}{Should the output be returned invisibly?}
  \item{ci}{Plot (pointwise) 95\% confidence intervals?}
  \item{ywgt}{Weights on the comparison sample.}
  \item{yowgt}{Weights on the reference sample.}
  \item{z}{Covariate on the comparison sample to be used to adjust it
to the reference distribution. Only used if the form of matching 
specified in \code{decomp="covariate"}.}
  \item{zo}{Covariate on the reference sample to be used in
  the adjustment.  to the reference distribution. Only used if
  the form of matching specified in \code{decomp="covariate"}.}
  \item{show}{Type of relative distribution to produce.  Possible values
    are \code{"none"} (comparions to reference), \code{residual}
    (location-matched reference to reference), \code{effect} (comparison
    to location-matched reference).}
  \item{decomp}{Form of matching to the comparison sample.  Possible
    values are \code{locmult} (multiplicatively scale the reference),
    \code{locadd} (additively shift the reference), \code{lsadd}
    (location/scale additive shift), \code{covariate} (covariate adjust
    the refernce (requires z and zo to be specified)).}
  \item{location}{How to measure location.  Possible values are
    \code{"mean"} and \code{"median"}.}
  \item{scale}{How to measure the scale.  Possible values are
    \code{"standev"} (standard deviation) and \code{IQR} (interquartile
    range).}
  \item{rpmult}{Only in calculation of polarization indices:
    multiplicatively scale the reference sample to the comparison sample
    before comparing the two distributions?}
  \item{binn}{Number of bins used in the smoother.}
  \item{deciles}{The percentiles used for the histogram bins. Typically
deciles (i.e., 0.0, 0.1, 0.2,\dots,0.9, 1.0), but any set can be used
(e.g., quintiles, terciles).}
  \item{aicc}{Values of the smoothing parameter to search
  over in minimizing the corrected AIC. Only used if 
  \code{method="gam"} and \code{smooth} is less than 0.}
  \item{type}{Type of plot to use. See \code{par()}.}
  \item{cex}{Character expansion to use in plots. See \code{par()}.}
  \item{\dots}{Additional arguments to the plot functions. See \code{par()}.}
}
\value{
  \item{x}{Horizontal coordinates for the density (typically
    percentages).}
  \item{y}{Density at x.}
  \item{rp}{95\% confidence interval for the median relative
    polarization as lower bound, estimate, upper bound.}
  \item{rpl}{95\% confidence interval for the lower relative
    polarization as lower bound, estimate, upper bound.}
  \item{rpu}{95\% confidence interval for the upper relative
    polarization as lower bound, estimate, upper bound.}
  \item{cdf}{x coordinates for the CDF (typically percentages) and y CDF
    at x.}
}
\note{
  Most of the code is for the plotting and tinkering.  The guts of the
  method are forming the relative data at the top.  The rest is a
  standard fixed interval density estimation with a few bells and
  whistles.}
\examples{
#
# First load the data.
#

data(nls, package="reldist")

#
# A simple example comparing permanent wages of the original to the
# recent cohort in the NLS.  See H&M (1999) for details.

reldist(y=recent$chpermwage,yo=original$chpermwage)

#
# A more sophisticated version of the same.
#

reldist(y=recent$chpermwage, yo=original$chpermwage,
        yowgt=original$wgt, ywgt=recent$wgt,      
        bar=TRUE,                                   
        smooth=0.1,                              
        yolabs=seq(-1, 3, by=0.5),                 
        ylim=c(0, 3.0),cex=0.8,                   
        ylab="Relative Density",                 
        xlab="Proportion of the Original Cohort")

#
# A CDF version.
#

reldist(y=recent$chpermwage, yo=original$chpermwage,
    yowgt=original$wgt, ywgt=recent$wgt,      
    cdfplot=TRUE,                               
    smooth=0.4,                              
    yolabs=seq(-1,3,by=0.5),                 
    ylabs=seq(-1,3,by=0.5),                  
    cex=0.8,                                 
    ylab="proportion of the recent cohort",  
    xlab="proportion of the original cohort")
}
\references{
For more examples see the tech report by Handcock & Aldrich (2002)
available at \url{http://www.csss.washington.edu/Papers}
}
\keyword{distribution}
