# This function was originally created by Aviv Madar, 
# and subsequently modified by Yeison Rodriguez. The
# function allows one to pass a file containing the
# topology of a regulatory network.  It then returns
# a binary matrix representing that same network
# topology, with arbitrary gene labels appended.

load_gold_standard <-
function( file, r_names=NULL, c_names=NULL ) {
	x = as.matrix(read.table(file))
	if(ncol(x) == 3) {
		if(is.null(r_names)){
			r_names = createNames(x, 1)
		}
		if(is.null(c_names)){
			c_names = createNames(x, 2)
		}
		y = setupGSMatrix(r_names, c_names)				
		idx_non_zero = which(as.numeric(x[,3]) != 0)
		for (i in 1:length(idx_non_zero)) {
			y[x[idx_non_zero[i],2],x[idx_non_zero[i],1]] = as.numeric(x[idx_non_zero[i],3])
		}
		return(y)	
	} 
	return(x)
}

