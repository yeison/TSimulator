runSim <-
function(topologyFile, ratiosFile, setNumber){
	syntheticNet = createNetwork(topologyFile)
	xinit = initialValues(ratiosFile)

	maxInitial = max(xinit)
	
	# Run the ODE solving algorithm.
	syntheticData = solveLDE(xinit, syntheticNet, 5, 1440, 0.01)
	# Extract a subset of points from the whole data set.
	extract = extractTraj(syntheticData, 21)

	
#	while(max(syntheticData) > 2*maxInitial){
#		laregRows = NULL
#		for(i in seq_len(dim(syntheticData)[1])){
#			if(max(syntheticData[i,]) > 2*maxInitial)
#				largeRows = append(laregRows, i)
#		}
#	
#		syntheticNet[ , laregRows] = syntheticNet[ , laregRows]/2
#		#	browser()
#		syntheticData = solveLDE(xinit, syntheticNet, 5, 1440, 0.001)
#	}
	# saveExtract saves the 21 points extracted from a simulation.
	saveExtract(extract, setNumber)
	# saveSolution saves the interaction matrix (synthetic network) and
	# initial values used.
	saveSolution(xinit, syntheticNet, setNumber)
	# saveSynthData saves the transcript values output by the simulation.
	saveSynthData(syntheticData, setNumber)
	
	plotLDE(syntheticData)
}

