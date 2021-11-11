<img src="man/Figures/rdmshmm.gif" width = 120 alt="bayesbackcast Logo"/>

# The reldist package

This is an R package to implement relative distribution methods.
These methods are described in the book 
[Relative Distribution Methods in the Social Sciences](https://doi.org/10.1007/b97852), by Mark S. Handcock and Martina Morris, Springer-Verlag, Inc., New York, 1999 ISBN 0387987789 .

It was developed by Mark S. Handcock.

It is software to estimate and graph the relative density, CDF and related functions. Also functions to estimate summary measures and their uncertainties. This contains functions directly related to the relative distribution and some data used in the book.

## Installation
<!-- To install the latest version from [CRAN](https://CRAN.R-project.org/package=ipc) -->
<!-- run: -->
<!-- ``` -->
<!-- install.packages("ipc") -->
<!-- ``` -->
To install the latest development version from github,
the best way it to use git to create a
local copy and install it as usual from there. If you just want to
install it, you can also use:
```
# If devtools is not installed:
# install.packages("devtools")

devtools::install_github("handcock/reldist")
```
<!-- devtools::install_github("handcock/rpm",auth_token="Your token") -->
<!-- You will need to create a personal token: see -->

<!-- https://docs.aws.amazon.com/codepipeline/latest/userguide/GitHub-create-personal-token-CLI.html -->

<!-- Stop at Step 6. The copied string is "Your token". -->

## Resources

* For a more detailed description of what can be done with the ``reldist`` package, see the introductory vignette by Handcock & Aldrich (2002) obtained at SSRN: http://dx.doi.org/10.2139/ssrn.1515775

To run an example use:
```
library(reldist)
```

First load the data:

```
data(nls, package="reldist")
```

A simple example comparing permanent wages of the original to the
recent cohort in the NLS.  See H&M (1999) for details.

```
reldist(y=recent$chpermwage,yo=original$chpermwage,method="bgk")
```

A more sophisticated version of the same.

```
reldist(y=recent$chpermwage, yo=original$chpermwage,
        yowgt=original$wgt, ywgt=recent$wgt,
        bar=TRUE,
        smooth=0.1, method="bgk",
        yolabs=seq(-1, 3, by=0.5),
        ylim=c(0, 3.0),cex=0.8,
        ylab="Relative Density",
        xlab="Proportion of the Original Cohort")
```
        
A CDF version.

```
reldist(y=recent$chpermwage, yo=original$chpermwage,
    yowgt=original$wgt, ywgt=recent$wgt,
    cdfplot=TRUE,
    smooth=0.4,
    yolabs=seq(-1,3,by=0.5),
    ylabs=seq(-1,3,by=0.5),
    cex=0.8,
    method="bgk",
    ylab="proportion of the recent cohort",
    xlab="proportion of the original cohort")
```

There is more informatin and working examples on the website: http://www.stat.ucla.edu/~handcock/RelDist/

## Development

[Development Practices and Policies for Contributers](../../wiki/How-to-Contribute:-Git-Practices)

<!-- badges: start -->
 [![R-CMD-check](https://github.com/handcock/rpm/workflows/R-CMD-check/badge.svg)](https://github.com/handcock/rpm/actions)
<!-- badges: end -->
