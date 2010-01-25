#Opens a GeneNetWeaver trajectories file, and converts the data
#to TSimulator format.  Returns a matrix of TSimulator format.
readGNW <-
function(file, npoints=21, plot=TRUE){
	syntheticDataSet = read.delim(file)
	geneNames = names(syntheticDataSet)
	newDataSet = extractGNW(syntheticDataSet, npoints)
	if(plot == TRUE)
		plotLDE(newDataSet[-1, ], 'l', geneNames[-1])
	return(newDataSet)
}