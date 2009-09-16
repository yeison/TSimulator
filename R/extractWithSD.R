extractWithSD <-
function(syntheticDataSet, numberOfPoints){
	synth = syntheticDataSet
	npoints = numberOfPoints
	rows = dim(synth)[1]
	dt = dim(synth)[2]/npoints	
	extracted = matrix(0, nr=rows, 	nc=npoints)
	extracted[ ,1] = synth[ ,1]
	for(i in 2:npoints){
		for(j in 1:rows){
			meanNoise = mean(synth[j, ])
			stdv = sd(synth[j,])
			if((temp = synth[j, i*dt] + (1/3)*rnorm(1, meanNoise, stdv)) > 0)
				extracted[j, i] = temp
			else
				if(extracted[j, i] < 0)
					extracted[j, i] = 0
		}
	}
	return(extracted)
}

