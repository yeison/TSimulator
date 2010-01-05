applyGeneLabels <-function(x){
	rLength = dim(x)[1]
	cLength = dim(x)[2]
	rLabels = paste("G", 1:rLength, sep="")	
	cLabels = paste("TS", 1:cLength, sep="")
	rownames(x) <- rLabels
	colnames(x) <- cLabels
	return(x)
}