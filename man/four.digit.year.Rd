\name{four.digit.year}
\alias{four.digit.year}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Correct conversion of years to four digit format}
\description{
Converts from two to four digit representation of years correcting the century for years earlier than that specified. Addresses the fact that under POSIX specifications, values 00 to 68 are prefixed by 20 and 69 to 99 by 19 when converting from two digit years, which can affectlonger time series and older data sets. }
\usage{
four.digit.year(x, year=1968)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A vector of POSIXct dates, presumably with some years (often those earlier than 1969) assigned to the wrong century.}
	\item{year}{
The year (in four digit format) indicating the cutoff for setting the century to 1900's or 2000's.
}
}

\value{
A vector of same length as input with years in four digit format.
}

\author{
Nick Bond <n.bond@latrobe.edu.au>
}

\seealso{
\code{\link{strptime}}.
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{
x <- as.POSIXct(c("01/01/43","01/01/68","01/01/69","01/01/99","01/01/04"), format="\%d/\%m/\%y")
x
four.digit.year(x, year=1968)
four.digit.year(x, year=1942)
}
