
# Demonstrates required markup for R documentation files
\name{ducksay}
\alias{ducksay}
\title{Duck Say}
\description{A duck that says hello.}
\usage{
ducksay(prashe = "hello, world")
}
\arguments{
\item{phrase} { The phrase for the duck to say.  }
}
\value{
A string representation of a duck saying hello to the world. 
}
\examples{
cat(ducksay())
cat(ducksay("quack!"))
}



