# Create a matrix that contains labels across
# its top axis and left axis.  By default the
# program passes G1:GN as both the rowNames and
# colNames.
setupGSMatrix <-
function(rowNames, colNames){
	x = matrix(0, length(rowNames), length(colNames))
	rownames(x) = rowNames
	colnames(x) = colNames
	return(x)
}