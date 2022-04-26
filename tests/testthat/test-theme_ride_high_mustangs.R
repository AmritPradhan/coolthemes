test_that("theme_ride_high_mustangs works", {
library(ggplot2)

  test_plot <- iris %>%
    ggplot(mapping = aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_point() +
    ggtitle("test")

  correct_result <- test_plot +
    theme_bw() +
    theme(text = element_text(family = "Trebuchet MS",
                              color = "#F2C75D"),
          plot.title = element_text(family = "Trebuchet MS Bold",
                                    color = "#143F2E"),
          panel.background = element_rect(fill = "ivory"),
          legend.position = "none")

  color_correct <- correct_result$theme$text$colour

  res <- test_plot +
    theme_ride_high_mustangs()

  color_res <- res$theme$text$colour

  expect_equal(color_res, color_correct)

})
