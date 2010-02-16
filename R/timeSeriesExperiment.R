#User may provide the name of the folder if it is on his/her desktop.
timeSeriesExperiment <- function(geneCount=10, folderName, loadDir=path.expand("~/Desktop")){
	savePath = createSavePath()
	loadPath = file.path(loadDir, folderName)
	
	seriesType = list("S", "D", "21")
	
	#seriesType one: Stochastic
	for(series in seq(geneCount-1)){
		seriesPath = paste(loadPath, seriesType[1], series, sep="")
		
	}
	
	#seriesType two: Deterministic
	for(series in seq(geneCount-1)){
		seriesPath = paste(loadPath, seriesType[2], series, sep="")
		
	}
	
	#seriesType three: Stochastic and Deterministic, 21 data points.
}