# The reldist package

This is an R package to implementing relative distribution methods.
These methods are described in the book 
[![DOI](Relative Distribution Methods in the Social Sciences)](https://doi.org/10.1007/b97852), by Mark S. Handcock and Martina Morris, Springer-Verlag, Inc., New York, 1999 ISBN 0387987789 .

It was originally developed by Ryan Admiraal and has been worked on by Mark S. Handcock and Fiona Yeung.

## Installation
<!-- To install the latest version from [CRAN](https://CRAN.R-project.org/package=ipc) -->
<!-- run: -->
<!-- ``` -->
<!-- install.packages("ipc") -->
<!-- ``` -->
To install the latest development version from the github,
the best way it to use git to create a
local copy and install it as usual from there. If you just want to
install it, you can also use:
```
# If devtools is not installed:
# install.packages("devtools")

devtools::install_github("handcock/rpm",auth_token="6656cad9d665e44b53316c616bc25703ee5ae823")
```
<!-- devtools::install_github("handcock/rpm",auth_token="Your token") -->
<!-- You will need to create a personal token: see -->

<!-- https://docs.aws.amazon.com/codepipeline/latest/userguide/GitHub-create-personal-token-CLI.html -->

<!-- Stop at Step 6. The copied string is "Your token". -->

## Resources

<!-- * For a more detailed description of what can be done with the ``ipc`` package, **[see the introductory -->
<!-- * vignette](http://htmlpreview.github.io/?https://github.com/fellstat/ipc/blob/master/inst/doc/shinymp.html)**. -->

To run an example use:
```
library(rpm)
data(fauxmatching)
fit <- rpm(~match("edu") + WtoM_diff("edu",3),
          Xdata=fauxmatching$Xdata, Zdata=fauxmatching$Zdata,
          X_w="X_w", Z_w="Z_w",
          pair_w="pair_w", pair_id="pair_id", Xid="pid", Zid="pid",
          sampled="sampled")
summary(fit)
```

For detail on how to construct data for input to `rpm()` see the documentation:
```
help(fauxmatching)
```

For information on the current terms that can be used in formulas for `rpm()` see the documentation:
```
help("rpm-terms")
```

## Development

[Development Practices and Policies for Contributers](../../wiki/How-to-Contribute:-Git-Practices)

<!-- badges: start -->
 [![R-CMD-check](https://github.com/handcock/rpm/workflows/R-CMD-check/badge.svg)](https://github.com/handcock/rpm/actions)
<!-- badges: end -->
