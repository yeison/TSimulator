saveExtract <-
function(extract, setNumber){
	size = length(extract[,1])
	trajectory = extract
	save(trajectory, file=paste("size", size, "Traj", setNumber, ".RData", sep=""))	
}

