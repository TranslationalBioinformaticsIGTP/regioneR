% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/print.permTestResults.R
\name{print.permTestResults}
\alias{print.permTestResults}
\title{Print permTestResults objects}
\usage{
\method{print}{permTestResults}(x, ...)
}
\value{
the object is printed
}
\description{
Print permTestResults objects
}
\examples{
genome <- filterChromosomes(getGenome("hg19"), keep.chr="chr1")
A <- createRandomRegions(nregions=20, length.mean=10000000, length.sd=20000, genome=genome, non.overlapping=FALSE) 
B <- c(A, createRandomRegions(nregions=10, length.mean=10000, length.sd=20000, genome=genome, non.overlapping=FALSE))

pt <- permTest(A=A, B=B, ntimes=10, alternative="auto", verbose=TRUE, genome=genome, evaluate.function=meanDistance, randomize.function=randomizeRegions, non.overlapping=FALSE)
print(pt)

}
\keyword{internal}
