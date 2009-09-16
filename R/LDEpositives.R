LDEpositives <-
function(x){
	cols = dim(x)[2]
	odds = seq(1, cols, by=2)
	x = x[ ,odds]
	return(x)
}

