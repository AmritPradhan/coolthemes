#' Midnight Theme for ggplot2 Plot
#'
#' @param text_color The color of the text and axis labels
#' @param title_color The color of the title, subtitle, and caption
#' @param background_color The color of the background
#' @param gridline_color The color of the grid lines
#'
#' @return A ggplot2 midnight theme
#'
#' @importFrom ggplot2 theme
#'
#' @export
theme_midnight <- function(text_color = "wheat",
                           title_color = "wheat",
                           background_color = "gray40",
                           gridline_color = "floralwhite") {

  theme(panel.grid.minor = element_line(color = gridline_color),
        panel.grid.major = element_line(color = gridline_color),

        text = element_text(color = text_color),
        axis.text = element_text(color = text_color),

        plot.title = element_text(color = title_color,
                                  size = 19,
                                  face = "bold",
                                  hjust = 0,
                                  vjust = 3),
        plot.subtitle = element_text(color = title_color,
                                     size = 13),
        plot.caption = element_text(color = title_color)
        ) +

    change_background_color(background_color)

}

#' Adds the background color to the midnight theme
#'
#' @param background_color The color of the plot's background
#'
#' @return A ggplot2 theme with a background color
#'
#' @importFrom ggplot2 theme
change_background_color <- function(background_color) {

  theme(
    panel.background = element_rect(fill = background_color),
    plot.background = element_rect(fill = background_color),
    legend.background = element_rect(fill = background_color),
    legend.key = element_rect(fill = background_color)
    )

}
