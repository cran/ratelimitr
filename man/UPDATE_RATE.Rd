% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/update-rate.R
\name{UPDATE_RATE}
\alias{UPDATE_RATE}
\title{Update the rate limit of an existing rate limited function}
\usage{
UPDATE_RATE(lf, ..., precision = 60)
}
\arguments{
\item{lf}{A rate-limited function or group of functions}

\item{...}{One or more rates, created using \code{\link{rate}}}

\item{precision}{The precision with which time intervals can be measured, in hertz}
}
\description{
\code{UPDATE_RATE} modifies an existing rate-limited function in place,
changing the rate limits without otherwise altering the function's behavior.
When a rate limited function has its rate limits updated, the previous rate
limits and any calls that would have counted against those rate limits are
immediately forgotten, and only the new rate limits are obeyed going forward.
}
\examples{
f <- function() NULL
f_lim <- limit_rate(f, rate(n = 1, period = .1))

# update the rate limits to 2 calls per .1 second
UPDATE_RATE(f_lim, rate(n = 2, period = .1))

}
