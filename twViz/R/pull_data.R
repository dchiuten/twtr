pull_data <- function(conn, rds_file_name, query, use_rds) {
  if(file.exists(rds_file_name) && use_rds) {
    read_rds(rds_file_name)
  } else {
    df <- dbGetQuery(conn, query)
    saveRDS(df, file = rds_file_name)
    return(df)
  }
}
