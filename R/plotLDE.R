plotLDE <-
function(dataMatrix, plotType=NULL, ymin = min(dataMatrix, na.rm=TRUE), ymax = max(dataMatrix, na.rm=TRUE)){
	size = dim(dataMatrix)[1]
	columns = dim(dataMatrix)[2]
	rows = dim(dataMatrix)[1]
    #ymin = min(dataMatrix)
    #ymax = max(dataMatrix)
	plot(1:columns, dataMatrix[1, ], xlab="Data Points", ylab="Transcription-product Values", xlim=c(0, columns), ylim=c(ymin, ymax))
	for(i in seq(1, rows)){
			points(1:columns, dataMatrix[i, ], col=i, type=plotType)
	}
	legend("topleft", "Legend", paste("G", 1:size, sep=""), col=1:size, fill=1:size)
}