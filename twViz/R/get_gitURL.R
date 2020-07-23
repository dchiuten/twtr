get_gitURL <- function() {
  wd <- rstudioapi::getSourceEditorContext()$path
  url_prefix <- "https://cgit.twitter.biz/sales_finance/tree/people"
  git_url <- paste(sub(".*people", url_prefix, wd), "?h=development", sep = "")
  return(git_url)
}

