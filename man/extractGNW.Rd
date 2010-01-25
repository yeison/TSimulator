\name{extractGNW}
\Rdversion{1.1}
\alias{extractGNW}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
extractGNW(synth, npoints)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{synth}{
%%     ~~Describe \code{synth} here~~
}
  \item{npoints}{
%%     ~~Describe \code{npoints} here~~
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
function(synth, npoints) {
	rows = dim(synth)[1]
	cols = dim(synth)[2]
	dt = rows/npoints	
	extracted = matrix(0, nrow=cols, ncol=npoints)
	extracted[,1] = as.matrix(synth[1,])
	for (i in 2:npoints)
		extracted[,i] = as.matrix(synth[i*dt, ])
	return(extracted)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
