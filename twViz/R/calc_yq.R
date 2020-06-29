calc_yq <- function(year_quarter_numeric) {
  yq <- zoo::as.yearqtr(format(year_quarter_numeric), "%Y%q")
  return(yq)
}
