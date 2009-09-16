fixGeneLabels <-
function(x){
	rLength = length(rownames(x))
	cLength = length(colnames(x))
	rLabels = paste("G", 1:rLength, sep="")	
	cLabels = paste("G", 1:cLength, sep="")	
	rownames(x) <- rLabels
	colnames(x) <- cLabels
	return(x)
}

