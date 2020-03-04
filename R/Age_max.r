#' A Age max function
#'
#' This function allows you calculate the player with the largest age in a given year
#'
#' @param df A dataframe
#' @param yr year
#' @export
#' @output player name and max age
#' Age+max()


Age_max <- function(df, yr) {
  df1 <- subset(df, Year == yr)
  age_max <- max(df1$Age, na.rm = T)
  player <- subset(df1, Age == age_max)$Player;
  return(c(player, age_max))
}


