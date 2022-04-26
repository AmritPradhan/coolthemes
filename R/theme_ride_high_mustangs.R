#' A custom theme for ggplot2 visualizations based off of Cal Poly! Ride High Mustangs
#'
#' @param plot plot that theme will be applied to
#' @param title_font font for title
#' @param text_font font for text
#' @param text_color color of the text
#' @param title_color color of the title
#' @param background_color color of plot's background
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
                            color = text_color),
        plot.title = element_text(family = title_font,
                                  color = title_color),
        panel.background = element_rect(fill = background_color),
        legend.position = "none")
}
