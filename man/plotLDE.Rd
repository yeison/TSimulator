\name{plotLDE}
\Rdversion{1.1}
\alias{plotLDE}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
plotLDE(dataMatrix, plotType = NULL, ymin = min(dataMatrix), ymax = max(dataMatrix))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dataMatrix}{
%%     ~~Describe \code{dataMatrix} here~~
}
  \item{plotType}{
%%     ~~Describe \code{plotType} here~~
}
  \item{ymin}{
%%     ~~Describe \code{ymin} here~~
}
  \item{ymax}{
%%     ~~Describe \code{ymax} here~~
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
function(dataMatrix, plotType=NULL,ymin = min(dataMatrix), ymax = max(dataMatrix) ){
	size = dim(dataMatrix)[1]
	columns = dim(dataMatrix)[2]
	rows = dim(dataMatrix)[1]
    #ymin = min(dataMatrix)
    #ymax = max(dataMatrix)
	plot(1:columns, dataMatrix[1, ], xlab="Data Points", ylab="Transcription-product Values", xlim=c(0, columns), ylim=c(ymin, ymax))
	for(i in seq(1, rows)){
			points(1:columns, dataMatrix[i, ], col=i, type=plotType)
	}
	legend("topleft", "Legend", paste("G", 1:size, sep=""), col=1:size, fill=1:size)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
