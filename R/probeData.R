probeData <-
function(file){
	load(file)
# WARNING: BUGGY function
	tryCatch(labels(synth), warning = function(e) labels(solutionList))
	# try synthetic data set, if not a synthetic data set try a solutionlist.
}

