#' A custom theme for ggplot2 visualizations based off of Cal Poly! Ride High Mustangs
#'
#' @param title_font font for title
#' @param text_font font for text
#' @param text_color color of the text
#' @param title_color color of the title
#' @param background_color color of plot's panel background
#'
#' @return A ggplot2 plot with the Cal Poly theme
#'
#' @importFrom ggplot2 theme
#'
#' @export

theme_ride_high_mustangs <- function(title_font= "Trebuchet MS Bold",
                     text_font = "Trebuchet MS",
                     text_color = "#F2C75D",
                     title_color = "#143F2E",
                     background_color = "ivory") {
  theme_bw() +
  theme(text = element_text(family = text_font,
                            size = 15,
                            color = text_color),
        plot.title = element_text(family = title_font,
                                  size = 20,
                                  color = title_color),
        panel.background = element_rect(fill = background_color),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        legend.position = "none") +
    change_axis_text()
}

#' This is a helper function that adds color to axis text and edits its size
#' @param axis_text_color Color of the text of the axes.
#' @importFrom ggplot2 theme

change_axis_text <- function(axis_text_color = "#358639") {

  theme(axis.text = element_text(size = 12,
                                 color = axis_text_color))


}




