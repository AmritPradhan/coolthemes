#' Midnight Theme for ggplot graph
#'
#' @param text_color The color of the text and axis labels
#' @param title_color The color of the title, subtitle, and caption
#' @param background_color The color of the plots background
#' @param gridline_color The color of the gridlines
#'
#' @return ggplot graph with the midnight theme'
#'
#' @importFrom ggplot2 theme scale_fill_brewer scale_color_brewer
#'
#' @export
theme_midnight <- function(text_color = "wheat",
                           title_color = "wheat",
                           background_color = "gray20",
                           gridline_color = "black") {

  theme(panel.background = element_rect(fill = background_color),
        plot.background = element_rect(fill = background_color),
        legend.background = element_rect(fill = background_color),
        panel.grid.minor = element_line(color = gridline_color),
        panel.grid.major = element_line(color = gridline_color),
        text = element_text(color = text_color),
        axis.text = element_text(color = text_color),
        plot.title = element_text(color = title_color),
        plot.subtitle = element_text(color = title_color),
        plot.caption = element_text(color = title_color))

}
