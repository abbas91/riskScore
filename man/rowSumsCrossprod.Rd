% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{rowSumsCrossprod}
\alias{rowSumsCrossprod}
\title{Apply crossprod and rowSums}
\usage{
rowSumsCrossprod(X, Y, transposeY)
}
\arguments{
\item{X}{A matrix with dimensions n*k. Hence the result of \code{rowSums(X)} has length n.}

\item{Y}{A matrix with dimenions n*m. Can be a matrix with dimension m*n but then \code{transposeY} should be \code{TRUE}.}

\item{transposeY}{Logical. If \code{TRUE} transpose Y before matrix multiplication.}
}
\value{
A vector of length m.
}
\description{
Fast computation of crossprod(rowSums(X),Y)
}
\examples{
x <- matrix(1:10,nrow=5)
y <- matrix(1:20,ncol=4)
rowSumsCrossprod(x,y,0)

x <- matrix(1:10,nrow=5)
y <- matrix(1:20,ncol=5)
rowSumsCrossprod(x,y,1)
}
\author{
Thomas Alexander Gerds <tag@biostat.ku.dk>
}

