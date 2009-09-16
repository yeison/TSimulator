\name{runSim}
\Rdversion{1.1}
\alias{runSim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
runSim(topologyFile, ratiosFile, setNumber)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{topologyFile}{
%%     ~~Describe \code{topologyFile} here~~
}
  \item{ratiosFile}{
%%     ~~Describe \code{ratiosFile} here~~
}
  \item{setNumber}{
%%     ~~Describe \code{setNumber} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(topologyFile, ratiosFile, setNumber){
	syntheticNet = createNetwork(topologyFile)
	xinit = initialValues(ratiosFile)

	maxInitial = max(xinit)
	
	# Run the ODE solving algorithm.
	syntheticData = solveLDE(xinit, syntheticNet, 5, 1440, 0.01)
	# Extract a subset of points from the whole data set.
	extract = extractTraj(syntheticData, 21)

	
#	while(max(syntheticData) > 2*maxInitial){
#		laregRows = NULL
#		for(i in seq_len(dim(syntheticData)[1])){
#			if(max(syntheticData[i,]) > 2*maxInitial)
#				largeRows = append(laregRows, i)
#		}
#	
#		syntheticNet[ , laregRows] = syntheticNet[ , laregRows]/2
#		#	browser()
#		syntheticData = solveLDE(xinit, syntheticNet, 5, 1440, 0.001)
#	}
	# saveExtract saves the 21 points extracted from a simulation.
	saveExtract(extract, setNumber)
	# saveSolution saves the interaction matrix (synthetic network) and
	# initial values used.
	saveSolution(xinit, syntheticNet, setNumber)
	# saveSynthData saves the transcript values output by the simulation.
	saveSynthData(syntheticData, setNumber)
	
	plotLDE(syntheticData)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
