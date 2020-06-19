pull_data <- function(f, rds_file_name, query, use_rds) {
  if(file.exists(rds_file_name) && use_rds) {
    read_rds(rds_file_name)
  } else {
    db_connection <- exec(f)
    pull_data <- dbGetQuery(db_connection, query)
    saveRDS(pull_data, file = rds_file_name)
    return(pull_data)
  }
}
