\name{readGNW}
\Rdversion{1.1}
\alias{readGNW}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
function to read a genenetweaver trajectories file.
}
\description{
Opens a GeneNetWeaver trajectories file, and extracts a certain number of data points.  Converts the data to TSimulator format.  Returns a matrix in TSimulator format.
}
\usage{
readGNW(filePath, numberOfPoints = 21)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{
    \code{file} is the file path to a GeneNetWeaver trajectories file.  Usually it is in .tsv format.
}
  \item{npoints}{
	\code{npoints} is the number of points to extract from the original data file.  These will be collectd at even intervals.
}
}
\details{
If necessary, more details than the description above ~~
}
\value{
The values returned will be a matrix of gene transcription levels at evenly spaced time intervals.  
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Yeison Rodriguez
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
function(file, npoints=21){
	syntheticDataSet = read.delim(file)
	return(extractGNW(syntheticDataSet, npoints))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
