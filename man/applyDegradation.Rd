\name{applyDegradation}
\Rdversion{1.1}
\alias{applyDegradation}
\alias{createNetwork}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A function to apply a series of negative values to the diagonal of an interaction matrix
}
\description{
This function transforms an interaction matrix to approximate a gene network where all of the RNA transcripts have a relatively similar degradation value.  It does so by placing a random negative value in each cell of the diagonal of the matrix.  The negative value does not exceed 
}
\usage{
applyDegradation(interactionMatrix)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{interactionMatrix}{
The interactionMatrix passed to this function should be a matrix containing the interaction values of a regulatory gene network.  Use \code{\link{createNetwork}} to create an interactionMatrix.
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
function(bm){
	diag(bm) = rnorm(length(bm[1,]), -0.0006, 0.0002)
	return(bm)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
