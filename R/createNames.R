createNames <-
function(x, column){
	labels = sort(unique(x[,column]))
	len = length(labels)
	names = paste("G", 1:len, sep="")
	return(names)	
}

