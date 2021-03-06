% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{hostname_to_ip}
\alias{hostname_to_ip}
\title{Returns the IP addresses associated with a hostname.}
\usage{
hostname_to_ip(hostnames)
}
\arguments{
\item{hostnames}{a vector of hostnames.}
}
\value{
a list the length of \code{hostnames}, containing the IP addresses from
each hostname's DNS entries. In the event that a hostname cannot be resolved,
the list element will consist of a length-1 character vector containing
"Not resolved".
}
\description{
takes in a vector of hostnames and returns the IP addresses from
each hostname's DNS entries. Compatible with both IPv4 and IPv6 addresses.
}
\examples{
\dontrun{
# One hostname
hostname_to_ip("dds.ec")
## [1] "162.243.111.4"

# Multiple hostnames
hostname_to_ip(c("dds.ec","ironholds.org"))
#[[1]]
#[1] "162.243.111.4"
#[[2]]
#[1] "104.131.2.226"
}
}
\seealso{
\code{ip_to_hostname} for the opposite functionality - resolving
IP addresses to their associated hostname(s) - and \code{\link{ip_to_numeric}}
for converting IP addresses retrieved from \code{hostname_to_ip} into their
numeric representation.
}

