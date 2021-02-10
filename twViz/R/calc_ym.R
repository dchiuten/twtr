calc_ym <- function(year_month) {
  yq <- zoo::as.yearmon(format(year_month), "%Y%m")
  return(yq)
}
