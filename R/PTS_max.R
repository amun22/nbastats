#' A most Points function
#'
#' This function allows you calculate the player with the most points in a given year
#' @param df A dataframe
#' @param yr year
#' @param points max points for specific year
#' @output player name and max points
#' PTS_max()


PTS_max <- function(df, yr) {
  df1 <- subset(df, Year == yr)
  points_max <- max(df1$PTS, na.rm = T)
  player <- subset(df1, PTS == points_max)$Player;
  return(c(player, points_max))
}
