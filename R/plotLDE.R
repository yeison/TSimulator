plotLDE <-
function(dataMatrix, plotType=NULL, geneNames=FALSE, ymin = min(dataMatrix, na.rm=TRUE), ymax = max(dataMatrix, na.rm=TRUE)){
	size = dim(dataMatrix)[1]
	columns = dim(dataMatrix)[2]
	rows = dim(dataMatrix)[1]
    #ymin = min(dataMatrix)
    #ymax = max(dataMatrix)
    xmin = as.integer(colnames(dataMatrix)[1])
    xmax = as.integer(colnames(dataMatrix)[columns])
    #ticks = (xmax/columns) * 5
    if(is.null(colnames(dataMatrix))){
			plot(1:columns, dataMatrix[1, ], xlab="Time", ylab="Transcription-product Values", xlim=c(0, columns), ylim=c(ymin, ymax), xaxs = "i")
		}
		else{
			cols = as.numeric(colnames(dataMatrix))
			plot(cols, dataMatrix[1, ], xlab="Time", ylab="Transcription-product Values", xlim=c(0, cols[length(cols)]), ylim=c(ymin, ymax), xaxs = "i")
		}

	for(i in seq(1, rows)){
		if(is.null(colnames(dataMatrix))){
			points(1:columns, dataMatrix[i, ], col=i, type=plotType)
		}
		else{
			cols = as.numeric(colnames(dataMatrix))
			points(cols, dataMatrix[i, ], col=i, type=plotType)
		}
	}
	if(typeof(geneNames) != "character"){
		legend("topleft", "Legend", paste("G", 1:size, sep=""), col=1:size, fill=1:size)
	}
	else
		legend("topleft", "Legend", geneNames, col=1:size, fill=1:size)
}

plotTriplets <- function(d3Matrix, plotType=NULL, ymin = min(d3Matrix, na.rm=TRUE), ymax = max(d3Matrix, na.rm=TRUE)){
	size = dim(d3Matrix)[1]
	columns = dim(d3Matrix)[2]
	rows = size
	
	plot(1:columns, d3Matrix[1, ,1], xlab="Data Points", ylab="Tanscription-product Values", xlim=c(0, columns), ylim=c(ymin, ymax))
	for(d in seq(1, 3)){
	for(i in seq(1, rows))
			points(1:columns, d3Matrix[i, ,d], col=i, type=plotType)
	}
 }