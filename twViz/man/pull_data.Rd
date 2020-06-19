\name{pull_data}
\alias{pull_data}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
function to pull data from Vertica or an RDS file, and save output to an RDS file for future local work
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
pull_data(f, rds_file_name, query, use_rds)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{f}{The function name for the Vertica connection
%%     ~~Describe \code{x} here~~
}
  \item{rds_file_name}{name for the rds file to save the query output locally
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x)
{
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
