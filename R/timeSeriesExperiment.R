#User may provide the name of the folder if it is on his/her desktop.
loadGNWData <- function(inFolderName, outFolderName="TS_Output", loadDir=path.expand("~/Desktop"), seriesCount=9){
	loadPath = file.path(loadDir, inFolderName)
	
	
	#seriesType one: Stochastic
	stoch = list()
	for(series in seq(seriesCount)){
		seriesPath = paste(loadPath, "S", series, sep="/")
		stoch = toList(stoch, seriesPath, series)
	}
	
	#seriesType two: Deterministic
	deter = list()
	for(series in seq(seriesCount)){
		seriesPath = paste(loadPath, "D", series, sep="/")
		deter = toList(deter, seriesPath, series)
	}
	
	sSpread = list()
	for(series in seq(seriesCount)){
		seriesPath = paste(loadPath, "S", series, sep="/")
		sSpread = toList(sSpread, seriesPath, series, spread=10)
	}
	
	#seriesType two: Deterministic
	dSpread = list()
	for(series in seq(seriesCount)){
		seriesPath = paste(loadPath, "D", series, sep="/")
		dSpread = toList(dSpread, seriesPath, series, spread=10)
	}
	
	
	#seriesType three: Stochastic and Deterministic, 21 data points.
	for(series in seq(length(seriesType) - 1)){
		sEven = list()
		for(series in seq(seriesCount)){
			seriesPath = paste(loadPath, "21", "S", series, sep="/")
			sEven = toList(sEven, seriesPath, series)
		}
		dEven = list()
		for(series in seq(seriesCount)){
			seriesPath = paste(loadPath, "21", "D", series, sep="/")
			dEven = toList(dEven, seriesPath, series)
		}

	}

	savePath = createSavePath(outFolderName)
	print(savePath)
	save(stoch, deter, sSpread, dSpread, sEven, dEven, file=savePath)
}

timeSeriesExperiment <- function(seriesPath, spread=1, npoints=1000, networkName="E100-network_", seriesType="knockout_timeseries"){
	seriesPath = paste(seriesPath, paste(networkName, seriesType, ".tsv", sep=""), sep="/")
	seriesData = readGNW(seriesPath, npoints, plot=FALSE)
	print("Finished")
	extracted = extractRegionals(seriesData, spread=spread)
	return(extracted)
}

toList <- function(theList, seriesPath, seriesNumber, spread=1){
	data = timeSeriesExperiment(seriesPath, spread=spread)
	tempList = list(data)
	names(tempList) = paste("ts", seriesNumber, sep="")
	theList = append(theList, tempList)
	return(theList)
}