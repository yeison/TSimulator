createNetwork <-
function(topologyFile){
	topology = load_gold_standard(topologyFile)
	interactionMatrix = bmat(dim(topology)[1])
	interactionMatrix = bm*topology
	interactionMatrix = applyDegradation(bm)
	return(interactionMatrix)
}