#Opens a GeneNetWeaver trajectories file, and converts the data
#to TSimulator format.  Returns a matrix of TSimulator format.
readGNW <-
function(file, npoints=21, plot=TRUE){
	syntheticDataSet = read.delim(file)
	geneNames = names(syntheticDataSet[ , -1])
	newDataSet = extractGNW(syntheticDataSet, npoints)
	times = as.character(newDataSet[1, ])
	newDataSet = newDataSet[-1, ]
	rownames(newDataSet) <- geneNames
	colnames(newDataSet) <- times
	if(plot == TRUE)
		plotLDE(newDataSet, 'l', geneNames)
	return(newDataSet)
}

extractGNW <-
function(synth, npoints) {
	rows = dim(synth)[1]
	cols = dim(synth)[2]
	dt = rows/npoints	
	extracted = matrix(0, nrow=cols, ncol=npoints)
	extracted = t(synth)
#	extracted[ ,1] = as.matrix(synth[1, ])
#	for (i in 2:npoints)
#		extracted[ ,i] = as.matrix(synth[i*dt, ])
	return(extracted)
}