#' A theme based on the colors of the Phoenix Suns
#'
#'@param text_color color of the text
#'@param title_color color of the title
#'@param panel_color color of the panels of the plot
#'@param background_color color of background of the plot
#'@param gridline_color color of the gridlines
#'
#'@return a plot with a Phoenix Suns theme
#'
#'@importFrom ggplot2 theme
#'
#'@export

theme_phoenix_suns <- function(text_color = "#E56020",
                               title_color = "#E56020",
                               panel_color = "#E56020",
                               gridline_color = "#5350ea",
                               background_color = "#5350ea") {
  theme(panel.background = element_rect(fill = panel_color),
        plot.background = element_rect(fill = background_color),
        axis.title = element_text(color = text_color,
                                  face = "bold"),
        axis.text = element_text(color = text_color,
                                 face = "bold"),
        plot.title = element_text(color = title_color,
                                  face = "bold",
                                  size = 15)) +
    add_purple_gridlines()
}

#' A helper function that makes the gridlines purple
#'
#' @param gridline_color color of the gridlines
#'
#' @return a plot with purple gridlines
#'
#' @importFrom ggplot2 theme
#'
#' @export

add_purple_gridlines <- function(gridline_color = "#5350ea") {

  theme(panel.grid.major = element_line(color = gridline_color,
                                        size = .7),
        panel.grid.minor = element_line(color = gridline_color,
                                        size = .7))
}
