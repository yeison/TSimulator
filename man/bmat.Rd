
\name{bmat}
\Rdversion{1.1}
\alias{bmat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Interaction Matrix
}
\description{
Create a square matrix containing the given number of elements.  Each element will have a random value associated with it.  These random values represent the regulatory strengths of the genes.
}
\usage{
bmat(n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
The size of the matrix.  {n} represents the number of elements that the matrix contains.
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
function(x){
	bmat = matrix(rnorm(x^2, 0, 0.005), nc=x)
	return(bmat)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
