\name{readOptions}
\alias{readOptions}
\alias{setOptions}
\title{
Read options from file
}
\description{
	The readOption function reads an option file from disk and store
	its name - value pairs into R's internal options using options()
}
\usage{
readOptions(file)
}

\arguments{
  \item{file}{
	  file to read, this file must exist otherwise an error is
	  generated
}

}
\details{
	The option file is a simple text file with in the first column the
	name of the option, then a whitespace and then the value op the
	options (which can contain additional whitespaces). If the value
	can be converted to numeric it is stored as numeric, else it is
	stored as character

	the function setOptions() is used internally by readOptions() and
	stores the options using options()
}

\value{
	the function returns the option table invisibly
}

\author{
 Job Spijker (rdev@spkr.nl)
}

%%\note{
%%  ~~further notes~~
%%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
	\code{\link{options}}
}

\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(file) {

	if(!file.exists(file)) {
	   msg<-paste("option file",file,"not found")
	   stop(msg)
	}
					
	o <- read.table(file,col.name=c("option","value"))
	setOptions(o)
	invisible(o)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~options }
\keyword{ ~configuration }% __ONLY ONE__ keyword per line
