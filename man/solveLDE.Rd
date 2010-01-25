\name{solveLDE}
\Rdversion{1.1}
\alias{solveLDE}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
solveLDE(initialTranscriptLevels, interactionMatrix, dt = 5, numberOfIntervals = 1440, noise = 0.01)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{initialTranscriptLevels}{
%%     ~~Describe \code{initialTranscriptLevels} here~~
}
  \item{interactionMatrix}{
%%     ~~Describe \code{interactionMatrix} here~~
}
  \item{dt}{
%%     ~~Describe \code{dt} here~~
}
  \item{numberOfIntervals}{
%%     ~~Describe \code{numberOfIntervals} here~~
}
  \item{noise}{
%%     ~~Describe \code{noise} here~~
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
function(initialTranscriptLevels, interactionMatrix, dt=5, numberOfIntervals=1440, noise=0.01){
	x = initialTranscriptLevels
	b = interactionMatrix
	time = dt*numberOfIntervals
	T = seq(0, time, by=dt)
	T_intervals = seq(1, length(T))
	rowsx=dim(b)[1]
#	alpha = rep(0.1, rowsx)
	c = rep(0, rowsx)
	
	x_new = matrix(0, nr=rowsx, nc=length(T_intervals)+1)
	x_new[,1] = x
	x = x_new

	for(t in T_intervals){

		for(i in seq_len(rowsx)){
			if((temp = dt*(sum(b[,i]*x[,t]) + c[i]) + x[i, t]) >= 0)
				x[i, (t + 1)] = temp+rnorm(1)*temp*noise
			else
				x[i, (t + 1)] = 0
		}
	}
	return(x)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
