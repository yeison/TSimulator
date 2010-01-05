# This function takes a set of synthetic data, and outputs a smaller set of data points from it.
extractRWSD <- function(syntheticDataSet, numberOfRegions=7, pointsPerRegion=3, spread=1){
	size = dim(syntheticDataSet)[2]
	numberOfPoints = pointsPerRegion*numberOfRegions
	rows = dim(syntheticDataSet)[1]
	# big_dt is the large separation between regions.
	big_dt = size/numberOfRegions
	extracted = matrix(NA, nr=rows, nc=size) # Initiate a matrix of 0s.
	# Take the first column of the data set (the initial conditions) for 
	# referential purposes.
	extracted[ ,1] = syntheticDataSet[ , 1]		
	# Move to each region, and look at data points behind and in front 
	# of that region.
	for(n in 1:pointsPerRegion){
		syntheticDataSet = extractWithSD(syntheticDataSet, length(syntheticDataSet[1, ]))
		for(i in 2:numberOfRegions)
			extracted[ ,i*big_dt - n*spread] = syntheticDataSet[ ,i*big_dt - n*spread]	
	# Save descriptive information about the original data set in the matrix itself.
	# One use for this information is plotting.
	#extracted[1 ,dim(extracted)[2]] = numberOfRegions
	#extracted[2, dim(extracted)[2]] = pointsPerRegion
	#extracted[3, dim(extracted)[2]] = size
	}
	return(extracted);
}