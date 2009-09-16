openSynthData <-
function(file){
	load(file)
	print(labels(synth))
	return(synth[[1]])
}

