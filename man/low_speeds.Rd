\name{low_speeds}
\alias{low_speeds}

\title{Subset Cars Data for Low Speeds}

\arguments{
\item{limit}{The speed limit (in mph)}
}

\description{
Get a subset of the \code{cars} data set.
}

\usage{
low_speeds(limit)
}

\value{Returns a subset of the \code{cars} data.frame.}

\examples{
low <- low_speeds(limit = 10)
print(low)
}
