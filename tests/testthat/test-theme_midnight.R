test_that("theme_midnight works", {
library(ggplot2)

  test_plot <- iris %>%
    ggplot(mapping = aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_point()+
    ggtitle("Test")

  res <- test_plot +
    theme_midnight()

  correct_res <- test_plot +
    theme(panel.background = element_rect(fill = "gray40"),
          plot.background = element_rect(fill = "gray40"),
          legend.background = element_rect(fill = "gray40"),
          legend.key = element_rect(fill = "gray40"),
          panel.grid.minor = element_line(color = "black"),
          panel.grid.major = element_line(color = "black"),
          text = element_text(color = "wheat"),
          axis.text = element_text(color = "wheat"),
          plot.title = element_text(color = "wheat",
                                    size = 20,
                                    face = "bold",
                                    hjust = 0,
                                    vjust = 2),
          plot.subtitle = element_text(color = "wheat",
                                       size = 14),
          plot.caption = element_text(color = "wheat"))

  res_color = res$theme$plot.background$fill

  correct_color = correct_res$theme$plot.background$fill

  expect_equal(res_color, correct_color)

})
