\name{load_gold_standard}
\Rdversion{1.1}
\alias{load_gold_standard}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
load_gold_standard(file, r_names = NULL, c_names = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{
%%     ~~Describe \code{file} here~~
}
  \item{r_names}{
%%     ~~Describe \code{r_names} here~~
}
  \item{c_names}{
%%     ~~Describe \code{c_names} here~~
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
function( file, r_names=NULL, c_names=NULL ) {
	x = as.matrix(read.table(file))
	if(ncol(x) == 3) {
		if(is.null(r_names)){
			r_names = createNames(x, 1)
		}
		if(is.null(c_names)){
			c_names = createNames(x, 2)
		}
		# Yeison: I Removed the error message when passing NULL values for row name and column
		# name.  Now the function will read these values directly from the file if they are not
		# provided by the user.
		y = setupGSMatrix(r_names, c_names)				
		idx_non_zero = which(as.numeric(x[,3]) != 0)
		for (i in 1:length(idx_non_zero)) {
			y[x[idx_non_zero[i],2],x[idx_non_zero[i],1]] = as.numeric(x[idx_non_zero[i],3])
		}
		return(y)	
	} 
	return(x)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
