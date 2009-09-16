bmat <-
function(x){
	bmat = matrix(rnorm(x^2, 0, 0.005), nc=x)
	return(bmat)
}

