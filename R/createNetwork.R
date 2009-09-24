createNetwork <-
function(topologyFile){
	topology = load_gold_standard(topologyFile)
	interactionMatrix = bmat(dim(topology)[1])
	interactionMatrix = interactionMatrix*topology
	interactionMatrix = applyDegradation(interactionMatrix)
	return(interactionMatrix)
}