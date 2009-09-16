setupGSMatrix <-
function(rowNames, colNames){
	x = matrix(0, length(rowNames), length(colNames))
	rownames(x) = rowNames
	colnames(x) = colNames
	return(x)
}

