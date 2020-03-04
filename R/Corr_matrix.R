#' A correlation function
#'
#' This function allows you calculate the correlation of players in a given year
#' @param df A dataframe
#' @param yr year
#' @param corr corr for specific year
#' @output player name and corr
#' corr_matrix()


Corr_matrix <- function(df, yr) {
  df1 <- subset(df, Year == yr)
  corr_matrix <- cor(df1)
  tidyverse::keep(is.numeric)
  return(corr_matrix)
}
