saveSolution <-
function(xinit, bm, setNumber){
	size = length(xinit)
	solutionList = list(xinit, bm)
	
	
	names(solutionList) = list(paste("xinit", setNumber, "size", size, sep=""), paste("bm", setNumber, "size", size, sep=""))
	
	solutionList
		
	save(solutionList, file=paste("size", size, "Synth", setNumber, "Solution", ".RData", sep=""))
	
}

