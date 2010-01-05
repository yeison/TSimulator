\name{TSimulator-package}
\Rdversion{1.1}
\alias{TSimulator-package}
\alias{TSimulator}
\docType{package}
\title{
Simulate gene transcription in the gene network/subnetwork provided
}
\description{
The simulator takes an interaction network, and outputs a variety of mRNA transcript values for any given period of time.  The simulation is provided by a differential equation solver.  This solver evaluates a system of ordinary differential equations.  It evaluates the interactions that are occurring at every timestep in order to approximate transcript values for the next time point.  The size of the timestep has a default value, but it may also be provided by the user.  The user may utilize some of the functions to simulate a microarray assay experiment.  The goal is to offer a variety of functions, one to model each type of experimental paradigm.  The paradigms available will be something along the lines of (a) replication, (b) no replication with closely clustered measurements, (c) no replication with diffuse clustering of measurements.
}
\details{
\tabular{ll}{
Package: \tab TSimulator\cr
Type: \tab Package\cr
Version: \tab 0.83\cr
Date: \tab 2009-09-16\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}
~~ An overview of how to use the package, including the most ~~
~~ important functions ~~
}
\author{
Yeison Rodriguez <yeison.rodriguez@nyu.edu>, with contributions from Aviv Madar <madaraviv@gmail.com> and Alex Greenfield <agreenfi1@gmail.com>.

Maintainer: Yeison Rodriguez <yeison.rodriguez@nyu.edu>
}
\references{
~~ Literature or other references for background information ~~
}
~~ Optionally other standard keywords, one per line, from file ~~
~~ KEYWORDS in the R documentation directory ~~
\keyword{ package }
\seealso{
~~ Optional links to other man pages, e.g. ~~
~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
}
\examples{
~~ simple examples of the most important functions ~~
}
