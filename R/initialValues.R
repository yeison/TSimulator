initialValues <-
function(ratiosFile){
	load(ratiosFile)
	xinit = ratios[,1]
	return(xinit)
}

