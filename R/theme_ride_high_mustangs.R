#' A custom theme for ggplot2 visualizations based off of Cal Poly! Ride High Mustangs
#' @param plot plot that theme will be applied to
#' @importFrom ggplot2 theme
#' @export

theme_ride_high_mustangs <- function(plot) {
plot +
  theme_bw() +
  theme(text = element_text(family = "Trebuchet MS",
                        color = "#F2C75D"),
    title = element_text(family = "Trebuchet MS Bold",
                         color = "#143F2E"),
    panel.background = element_rect(fill = "ivory"),
    legend.position = "none")
}
