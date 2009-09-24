#Create a square matrix containing the given number of elements.  Each element will have a random value associated with it.  These random values represent the regulatory strengths of the genes.
bmat <-
function(n){
	bmat = matrix(rnorm(n^2, 0, 0.005), nc=n)
	return(bmat)
}