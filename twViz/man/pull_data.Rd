\name{pull_data}
\alias{pull_data}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  function to run query from Vertica and save output as .rds file
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
pull_data(f, rds_file_name, query, use_rds)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{f}{
    A string, corresponding to the function name of the Vertica connecction
}
  \item{rds_file_name}{
    A string, indicating the name of the .rds file to be saved
}
  \item{query}{
  %%     ~~Describe \code{query} here~~
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
function (f, rds_file_name, query, use_rds)
{
    if (file.exists(rds_file_name) && use_rds) {
        read_rds(rds_file_name)
    }
    else {
        db_connection <- exec(f)
        pull_data <- dbGetQuery(db_connection, query)
        saveRDS(pull_data, file = rds_file_name)
        return(pull_data)
    }
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
