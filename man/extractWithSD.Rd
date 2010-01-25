\name{extractWithSD}
\Rdversion{1.1}
\alias{extractWithSD}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
 ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
extractWithSD(syntheticDataSet, numberOfPoints)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{syntheticDataSet}{
%%     ~~Describe \code{syntheticDataSet} here~~
}
  \item{numberOfPoints}{
%%     ~~Describe \code{numberOfPoints} here~~
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
function(syntheticDataSet, numberOfPoints){
	synth = syntheticDataSet
	npoints = numberOfPoints
	rows = dim(synth)[1]
	dt = dim(synth)[2]/npoints	
	extracted = matrix(0, nr=rows, 	nc=npoints)
	extracted[ ,1] = synth[ ,1]
	for(i in 2:npoints){
		for(j in 1:rows){
			meanNoise = mean(synth[j, ])
			stdv = sd(synth[j,])
			if((temp = synth[j, i*dt] + (1/3)*rnorm(1, meanNoise, stdv)) > 0)
				extracted[j, i] = temp
			else
				if(extracted[j, i] < 0)
					extracted[j, i] = 0
		}
	}
	return(extracted)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
