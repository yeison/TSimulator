extractTriplets <- function(syntheticDataSet, numberOfRegions=7, replicates=3, spread=0){
	size = dim(syntheticDataSet)[2]
	pointsPerRegion = replicates
	numberOfPoints = pointsPerRegion*numberOfRegions
	rows = dim(syntheticDataSet)[1]
	# big_dt is the large separation between regions.
	big_dt = size/numberOfRegions
	extracted = array(NA, c(nr=rows, nc=size, 3)) # Initiate a 3d-matrix of NA.
	meanMat = matrix(0, nr=rows, nc=size)
	# Take the first column of the data set (the initial conditions) for referential purposes.
	extracted[ , 1, seq(1, replicates)] = syntheticDataSet[ , 1]
		
	# Simulate replicate number of experimental procedures (typically 3).
	# Conducting each procedure adds variable noise to the data set.
	# Approximate 
	for(n in 1:replicates){
		#Shift the data set based on SD noise.
		syntheticDataSet = extractWithNoise(syntheticDataSet, numberOfRegions, .05)
												#length(syntheticDataSet[1, ]))
		for(i in 0:numberOfRegions){
			extracted[ , i*big_dt, n] = syntheticDataSet[ , i]
			if(n == replicates){
				for(j in 1:n)
					meanMat[ ,i*big_dt] = meanMat[ ,i*big_dt] + extracted[ , i*big_dt, j]
				meanMat[ ,i*big_dt] = meanMat[ ,i*big_dt]/j
			}
		}	
	# Save descriptive information about the original data set in the matrix itself.
	# One use for this information is plotting.
	#extracted[1 ,dim(extracted)[2]] = numberOfRegions
	#extracted[2, dim(extracted)[2]] = pointsPerRegion
	#extracted[3, dim(extracted)[2]] = size
	}
	#Make a list from the data, and give labels $triplets and $mean.
	output = list(triplets=extracted, mean=meanMat)
	return(output);
}