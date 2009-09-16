readGNW <-
function(file, npoints=21){
	syntheticDataSet = read.delim(file)
	return(extractGNW(syntheticDataSet, npoints))
}

