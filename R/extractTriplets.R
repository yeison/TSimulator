extractTriplets <- function(syntheticDataSet, numberOfRegions=7, pointsPerRegion=3, spread=0){
	size = dim(syntheticDataSet)[2]
	numberOfPoints = pointsPerRegion*numberOfRegions
	rows = dim(syntheticDataSet)[1]
	# big_dt is the large separation between regions.
	big_dt = size/numberOfRegions
	extracted = array(NA, c(nr=rows, nc=size, 3)) # Initiate a 3d-matrix of NA.
	# Take the first column of the data set (the initial conditions) for referential purposes.
	extracted[ , 1, seq(1, 3)] = syntheticDataSet[ , 1]
		
	# Move to each region, and look at data points behind and in front 
	# of that region.
	for(n in 1:pointsPerRegion){
		shift = 1
		#Shift the data set based on SD noise.
		syntheticDataSet = extractWithSD(syntheticDataSet, length(syntheticDataSet[1, ]))
		for(i in 2:numberOfRegions)
			extracted[ , i*big_dt, n] = syntheticDataSet[ , i*big_dt]	
	# Save descriptive information about the original data set in the matrix itself.
	# One use for this information is plotting.
	#extracted[1 ,dim(extracted)[2]] = numberOfRegions
	#extracted[2, dim(extracted)[2]] = pointsPerRegion
	#extracted[3, dim(extracted)[2]] = size
	}
	return(extracted);
}