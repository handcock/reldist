#################################################################################
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

wtd.quantile <- function(x, q=0.5, na.rm = FALSE, weight=NULL) {
	if(mode(x) != "numeric")
 		stop("need numeric data")
        if(!length(weight)){
          quantile(x=x,probs=q,na.rm=na.rm)
        }else{
 	  x <- as.vector(x)
 	  wnas <- is.na(x)
 	  if(sum(wnas)>0) {
 		if(na.rm){
 		 x <- x[!wnas]
 	  	 weight <- weight[!wnas]
                }else{ return(NA) }
 	  }
          o <- order(x)
          n <- length(weight)
          order <- 1 + (n - 1) * q
          low  <- pmax(floor(order), 1)
          high <- pmin(low + 1, n)
          order <- order%%1
          allq <- approx(x=cumsum(weight[o])/sum(weight), y=x[o], xout = c(low, high)/n, method = "constant", 
              f = 1, rule = 2)$y
          k <- length(q)
          (1 - order) * allq[1:k] + order * allq[-(1:k)]
        }
}

wtd.iqr <- function(x, na.rm = FALSE, weight=NULL) {
  wtd.quantile(x, q=0.75, na.rm = na.rm, weight=weight)
- wtd.quantile(x, q=0.25, na.rm = na.rm, weight=weight)
}
iqr <- function(x, na.rm = FALSE) {
  wtd.quantile(x, q=0.75, na.rm = na.rm, weight=NULL)
- wtd.quantile(x, q=0.25, na.rm = na.rm, weight=NULL)
}
