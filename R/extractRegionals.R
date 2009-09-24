extractRegionals <- function(syntheticDataSet, numberOfRegions=7, pointsPerRegion=3, spread=1){
	numberOfPoints = pointsPerRegion*numberOfRegions
	rows = dim(syntheticDataSet)[1]
	# big_dt is the large separation between regions.
	big_dt = dim(syntheticDataSet)[2]/numberOfRegions
	extracted = matrix(0, nr=rows, nc=numberOfPoints) # Initiate a matrix of 0s.
	# Take the first column of the data set (the initial conditions) for 
	# referential purposes.
	extracted[ ,1] = syntheticDataSet[ ,1]		
	# Move to each region, and look at data points behind and in front 
	# of that region.
	for(i in 2:(numberOfRegions-1)){
		extracted[ ,i*pointsPerRegion-1] = syntheticDataSet[ ,i*big_dt]
		extracted[ ,i*pointsPerRegion-2] = syntheticDataSet[ ,i*big_dt-spread]
		extracted[ ,i*pointsPerRegion]	= syntheticDataSet[ ,i*big_dt+spread]
	}
	
	# Save descriptive information about the original data set in the matrix itself.
	# One use for this information is plotting.
	extracted[1 ,dim(extracted)[2]] = numberOfRegions
	extracted[2, dim(extracted)[2]] = pointsPerRegion
	
	return(extracted);
}