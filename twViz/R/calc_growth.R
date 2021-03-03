calc_growth <- function(x, n, percent = TRUE) {

  if (percent) {
    growth = x / lag(x, n) - 1
  } else {
    growth = x - lag(x, n)
  }
  return(growth)
}
