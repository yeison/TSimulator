plotRegionals <- function(regionalExtract){
	regions = regionalExtract[1, dim(regionalExtract)[2]]
	pointsPerRegion = regionalExtract[2, dim(regionalExtract)[2]]
	sizeOfOriginal = regionalExtract[3, dim(regionalExtract)[2]]
}
	# If there is no graphic device available, create a new device
#	if (dev.cur() == 1)
#		plot()