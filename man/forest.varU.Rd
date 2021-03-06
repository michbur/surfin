% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/forest.varU.R
\name{forest.varU}
\alias{forest.varU}
\title{U-statistic based estimate for random objects}
\usage{
forest.varU(predictedAll, object, covariance = FALSE)
}
\arguments{
\item{predictedAll}{a matrix with ntree rows where each element is the individual tree's prediction for that prediction}

\item{object}{A random object trained with replace=FALSE but with common observations}

\item{covariance}{whether covariance should be returned instead of variance, default is FALSE}
}
\value{
if covariance=TRUE, a list with predictions for each observation and covariances between predictions; otherwise, predictions for each observation and corresponding variance
}
\description{
Calculate the u-statistic based variance
}
\examples{
features = birds[,setdiff(names(birds),"detected")]
response = birds[,"detected"]
object = forest(x=features,y=response,var.type="ustat",B=5)
varU = forest.varU(object$predictedAll,object)
}
\references{
Lucas K. Mentch and Giles J. Hooker. (2016). Quantifying Uncertainty in Random objects via Confidence Intervals and Hypothesis Tests. Journal of Machine Learning Research, 17(26), 1-41. http://www.jmlr.org/papers/volume17/14-168/14-168.pdf
}
\seealso{
\code{\link{object.varIJ}}
}
\author{
Sarah Tan <\email{ht395@cornell.edu}>, Lucas K. Mentch, Giles J. Hooker
}
\keyword{based}
\keyword{object,}
\keyword{random}
\keyword{u-statistic}
\keyword{variance,}
