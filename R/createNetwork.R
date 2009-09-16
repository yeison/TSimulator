createNetwork <-
function(topologyFile){
	topology = load_gold_standard(topologyFile)
	bm = bmat(dim(topology)[1])
	bm = bm*topology
	bm = applyDegradation(bm)
	return(bm)
}

