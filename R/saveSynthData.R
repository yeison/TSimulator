saveSynthData <-
function(syntheticDataSet, setNumber){
	synth = syntheticDataSet
	size = length(synth[,1])
	
	synth = list(synth)
	names(synth) = paste("Synthetic Network", setNumber, "Size", size)
	
	labels(synth) 
	
	save(synth, file=paste("size", size, "Synth", setNumber, "Data", ".RData", sep=""))
		
}

