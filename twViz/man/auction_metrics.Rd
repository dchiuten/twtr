\name{auction_metrics}
\alias{auction_metrics}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate basic auction metrics on a data frame
}
\description{
takes a data frame with revenue, impressions and engagements and sums according to granularity specified by ..., and calculates CPM, CPE and CTR
}
\usage{
auction_metrics(..., rev_col = revenue, eng_col = engagements, imp_col = impressions)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{...}{
a set of dimensions along which to calculate the auction metrics (e.g., date, user geo, sales team)
%%     ~~Describe \code{x} here~~
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
