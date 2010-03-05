# This function takes a set of synthetic data, and outputs a smaller set of data points from it.
extractRegionals <- function(syntheticDataSet, numberOfRegions=7, pointsPerRegion=3, spread=1){
	cols = dim(syntheticDataSet)[2]
	numberOfPoints = pointsPerRegion*numberOfRegions
	rows = dim(syntheticDataSet)[1]
	# big_dt is the large separation between regions.
	big_dt = cols/numberOfRegions
	extracted = matrix(NA, nr=rows, nc=numberOfPoints) # Initiate a matrix of 0s.
	rownames(extracted) = rownames(syntheticDataSet)
	# Take the first column of the data set (the initial conditions) for 
	# referential purposes.
	#extracted[ ,1] = syntheticDataSet[ , 1]
	#R is very fussy about changing NULL colnames, but not rownames...
	colnames(extracted) = as.character(0:(numberOfPoints-1))
	# Move to each region, and look at data points behind and in front 
	# of that region.
	shift = 0
	for(i in 0:(numberOfRegions-1)){
		for(n in 1:pointsPerRegion){
			extracted[ ,n+shift] = syntheticDataSet[ , i*big_dt + n*spread]
			colnames(extracted)[n+shift] = colnames(syntheticDataSet)[i*big_dt + n*spread]
		}
		
		shift = shift + 3
	}
	# Save descriptive information about the original data set in the matrix itself.
	# One use for this information is plotting.
	#extracted[1 ,dim(extracted)[2]] = numberOfRegions
	#extracted[2, dim(extracted)[2]] = pointsPerRegion
	#extracted[3, dim(extracted)[2]] = size
	
	return(extracted);
}