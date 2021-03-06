% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{ip_to_numeric}
\alias{ip_to_numeric}
\alias{numeric_to_ip}
\title{convert between numeric and dotted-decimal IPv4 forms.}
\usage{
ip_to_numeric(ip_addresses)

numeric_to_ip(ip_addresses)
}
\arguments{
\item{ip_addresses}{a vector of IP addresses, in their numeric or dotted-decimal
form depending on the function.}
}
\value{
For \code{ip_to_numeric}: a vector containing the numeric representation of \code{ip_addresses}.
If an IP is invalid (either because it's an Ipv6 address, or isn't an IP address
at all) the returned value for that IP will be 0.

For \code{numeric_to_ip}: a vector containing the dotted-decimal representation of \code{ip_addresses},
as character strings. If a value cannot be resolved to an IPv4 address, it will appear as "0.0.0.0" or
an empty string.
}
\description{
\code{ip_to_numeric} takes IP addresses stored
in their human-readable representation ("192.168.0.1")
and converts it to a numeric representation (3232235521).
\code{numeric_to_ip} performs the same operation, but in reverse.
Due to limitations in R's support for colossally
big numbers, this currently only works for IPv4 IP addresses.
}
\examples{
#Convert your local, internal IP to its numeric representation.
ip_to_numeric("192.168.0.1")
#[1] 3232235521

#And back
numeric_to_ip(3232235521)
#[1] 192.168.0.1"
}

