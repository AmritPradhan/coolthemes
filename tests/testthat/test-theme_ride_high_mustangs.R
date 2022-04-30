test_that("theme_ride_high_mustangs works", {
library(ggplot2)

  test_plot <- iris %>%
    ggplot(mapping = aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_point() +
    ggtitle("test")

  correct_result <- test_plot +
    theme_bw() +
    theme(text = element_text(family = "Trebuchet MS",
                              size = 10,
                              color = "#F2C75D"),
          plot.title = element_text(family = "Trebuchet MS Bold",
                                    size = 15,
                                    color = "#143F2E"),
          panel.background = element_rect(fill = "ivory"),
          axis.text = element_text(size = 10,
                                   color = "#358639"),
          legend.position = "none")

  color_correct <- correct_result$theme$text$colour

  res <- test_plot +
    theme_ride_high_mustangs()

  color_res <- res$theme$text$colour

  expect_equal(color_res, color_correct)

})

test_that("change_axis_text works", {
  try_plot <- iris %>%
    ggplot(mapping = aes(y = Sepal.Length, x = Sepal.Width)) +
    geom_line()+
    ggtitle("test")

  correct_result <- try_plot +
    theme(axis.text = element_text(size = 12,
                                   color = "#358639"))

  correct_axis <- correct_result$theme$text$colour

  my_result <- try_plot +
    change_axis_text()

  axis_try <- my_result$theme$text$colour

  expect_equal(correct_axis, axis_try)

})
