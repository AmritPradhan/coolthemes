#'A function that will automatically plot one variable data with exotic colors
#'@param data dataset to apply colors to
#'@param x the x variable
#'@param y the y variable
#'@param adp_colors the color to apply to the visualization
#'@param type type of visualization
#'@return the plot colored with specified color
#'@import ggplot2
#'@export


dark_pink = "#FF39D5"
lime = "#69FF4E"
turquoise = "#79FDFF"
hydro_yellow = "#FFE41B"
pastel_red = "#FFAFAF"

adp_colors <- list(dark_pink, lime, turquoise, hydro_yellow, pastel_red)

color_plots <- function(data, x, adp_colors = NULL, type, fill) {

  if (is.null(x))
      stop("Must specify an x value")

  if (is.null(adp_colors))
    stop("Must specificy a color")


  colored_plot <- data %>%
    ggplot2::ggplot(mapping = ggplot2::aes(x = x, fill = fill)) +
    type +
    ggplot2::scale_fill_manual(values = adp_colors)

  return(colored_plot)
}
