\name{calc_growth}
\alias{calc_growth}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate growth in absolute or percentage terms based on a user-defined number of lag periods
}
\description{
Calculate Y/Y, Q/Q, Y/2Y, M/M, etc. growth in either absolute or percentage terms.
}
\usage{
calc_growth(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
    The column in your data frame whose growth you want to calculate.
  }
  \item{n}{
    An integer. Number of rows you want to lag by. For example, if data is monthly and you want Y/Y growth, then set n = 12. If data is quarterly and you want Y/2Y, set n = 8.
  }
  \item{percent}{
    Boolean. Set TRUE to calculate results in percentage terms, FALSE for absolute.
  }
  \item{use_rds}{
    Boolean, TRUE to import data from an rds file rather than running query
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
