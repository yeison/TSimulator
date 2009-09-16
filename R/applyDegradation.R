applyDegradation <-
function(interactionMatrix){
	im <- interactionMatrix
	diag(im) = rnorm(length(im[1,]), -0.0006, 0.0002)
	return(im)
}