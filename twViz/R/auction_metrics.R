auction_metrics <- function(df, ..., rev_col = revenue, eng_col = engagements, imp_col = impressions) {
  df_out <- df %>%
    dplyr::rename(
      revenue = {{rev_col}},
      engagements = {{eng_col}},
      impressions = {{imp_col}}
    ) %>%
    dplyr::group_by(across(c(...))) %>%
    dplyr::summarise(across(c(revenue, impressions, engagements), sum)) %>%
    dplyr::mutate(
      cpm = revenue / impressions * 1000,
      cpe = revenue / engagements,
      ctr = engagements / impressions
    ) %>%
    dplyr::ungroup()
}
