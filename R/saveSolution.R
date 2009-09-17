saveSolution <-
function(initialExpressionValues, interactionMatrix, setNumber){
	size = length(xinit)
	# Create a list with the interactionMatrix, and the initial expression values.
	solutionList = list(initialExpressionValues, interactionMatrix)
	names(solutionList) = list("init", "interactions")
	
	solutionList
	
	# Save that list to the file with the provided naming convention
	# size{N}Synth{set}Solution.RData
	save(solutionList, file=paste("size", size, "Synth", setNumber, "Solution", ".RData", sep=""))
}