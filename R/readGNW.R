#Opens a GeneNetWeaver trajectories file, and converts the data
#to TSimulator format.  Returns a matrix of TSimulator format.
readGNW <-
function(file, npoints=21){
	syntheticDataSet = read.delim(file)
	return(extractGNW(syntheticDataSet, npoints))
}