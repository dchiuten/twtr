yq_breaks <- function(data, yq_col = yq) {
  df <- data %>%
    dplyr::rename(yq = {{yq_col}})
  sequence <- seq(min(data$yq), max(data$yq), by = 0.25)
  return(sequence)
}
