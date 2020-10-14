gen_rects <- function(df, quarter, yq = yq ) {
  df_quarters <- df %>%
    mutate(yq = {{yq}}) %>%
    filter(quarter(yq) == quarter)

  df_out <- data.frame(
    yq = as.numeric(unique(df_quarters$yq))
  ) %>%
    mutate(x1 = yq - .125, x2 = yq + .125, quarter = quarter) %>%
    select(-yq)
  return(df_out)
}
