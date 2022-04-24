#' A custom theme for ggplot2 visualizations based off of Cal Poly! Ride High Mustangs
#' @param plot plot that theme will be applied to
#' @param title_font font for title
#' @param text_font font for text
#' @param text_color color of the text
#' @param title_color color of the title
#' @param background_color color of plot's background
#' @param line_color line color
#' @importFrom ggplot2 theme
#' @export

theme_ride_high_mustangs <- function(plot, title_font= "Trebuchet MS Bold",
                     text_font = "Trebuchet MS",
                     text_color = "#143F2E",
                     title_color = "#358639",
                     line_color = "#F2C75D",
                     background_color = "#FFFFFF") {
plot +
  theme(text = element_text(family = text_font,
                        color = text_color),
    title = element_text(family = title_font,
                         color = title_color),
    line = element_line(color = line_color),
    plot.background = element_rect(fill = background_color),
    legend.position = "none")
}
