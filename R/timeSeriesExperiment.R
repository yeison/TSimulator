#User may provide the name of the folder if it is on his/her desktop.
loadGNWData <- function(inFolderName, outFolderName="TS_Output", loadDir=path.expand("~/Desktop"), seriesCount=9){
	loadPath = file.path(loadDir, inFolderName)
	
	seriesType = list("S", "D", "21")
	
	#seriesType one: Stochastic
	stoch = list()
	for(series in seq(seriesCount)){
		seriesPath = paste(loadPath, seriesType[1], series, sep="/")
		stoch = append(stoch, toList(timeSeriesExperiment(seriesPath), stoch, series))
	}
	
	#seriesType two: Deterministic
	deter = list()
	for(series in seq(seriesCount)){
		seriesPath = paste(loadPath, seriesType[2], series, sep="/")
		deter = toList(timeSeriesExperiment(seriesPath), deter, series)
	}
	
	#seriesType three: Stochastic and Deterministic, 21 data points.
	for(series in seq(length(seriesType) - 1)){
		for(series in seq(seriesCount))
			seriesPath = paste(loadPath, seriesType[3], seriesType[1], series, sep="/")
			stoch21 = timeSeriesExperiment(seriesPath, 21)
		for(series in seq(seriesCount))
			seriesPath = paste(loadPath, seriesType[3], seriesType[2], series, sep="/")
			deter21 = timeSeriesExperiment(seriesPath, 21)
	}

browser()
	savePath = createSavePath(outFolderName)
	save(stoch, deter, file=savePath)
}

timeSeriesExperiment <- function(seriesPath, npoints=1000){
	seriesPath = paste(seriesPath, "Ecoli-1_dream4_timeseries.tsv", sep="/")
	seriesData = readGNW(seriesPath, npoints, plot=FALSE)
	print("Finished")
	triplicateData = extractRegionals(seriesData)
	return(triplicateData)
}

toList <- function(data, theList, seriesNumber){
	tempList = list(data)	
	names(tempList) = paste("ts", seriesNumber, sep="")
	return(tempList)
}