# The <wtd.quantile> function determines and returns the weighted quantile of a
# vector x
#
# --PARAMETERS--
#   x     : a numeric vector
#   na.rm : whether missing values should be removed (T or F); default=FALSE
#   weight: a vector of weights for each value in x
#
# --RETURNED--
#   NA                     if x has missing values and 'na.rm'=FALSE
#   the weighted quantile    otherwise  
#
################################################################################
#' @importFrom Hmisc wtd.quantile
wtd.quantile <- function(x, q=0.5, na.rm = FALSE, weight=FALSE) {
	Hmisc::wtd.quantile(x=x,weights=weight,probs=q,na.rm=na.rm)
}

wtd.iqr <- function(x, na.rm = FALSE, weight=FALSE) {
  wtd.quantile(x, q=0.75, na.rm = na.rm, weight=weight)
- wtd.quantile(x, q=0.25, na.rm = na.rm, weight=weight)
}
iqr <- function(x, na.rm = FALSE) {
  wtd.quantile(x, q=0.75, na.rm = na.rm, weight=FALSE)
- wtd.quantile(x, q=0.25, na.rm = na.rm, weight=FALSE)
}
