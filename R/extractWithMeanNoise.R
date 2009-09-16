extractWithMeanNoise <-
function(syntheticDataSet, numberOfPoints, noise){
	synth = syntheticDataSet
	npoints = numberOfPoints
	rows = dim(synth)[1]
	dt = dim(synth)[2]/npoints	
	extracted = matrix(0, nr=rows, 	nc=npoints)
	extracted[ ,1] = synth[ ,1]
	matrixMean = mean(synth)
	for(i in 2:npoints){
		for(j in 1:rows){
			if((temp = synth[j, i*dt] + (rnorm(1, 0, sd=matrixMean)*noise)) > 0)
				extracted[j, i] = temp
			else
				extracted[j, i] = 0
		}
	}
	return(extracted)
}

