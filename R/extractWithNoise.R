extractWithNoise <-
function(syntheticDataSet, numberOfPoints=21, noise){
	synth = syntheticDataSet
	npoints = numberOfPoints
	rows = dim(synth)[1]
	dt = dim(synth)[2]/npoints	
	extracted = matrix(0, nr=rows, nc=npoints)
		# Initiate a matrix of 0s
	extracted[ ,1] = synth[ ,1]
	for (i in 2:npoints)
		extracted[ ,i] = synth[ ,i*dt] + synth[ ,i*dt]*rnorm(1, 0, noise)
	return(extracted)
}