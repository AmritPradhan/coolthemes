test_that("theme_ride_high_mustangs works", {
library(ggplot2)
  test_plot <- iris %>%
    ggplot(mapping = aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_jitter() +
    stat_smooth(method = "lm")

  correct_result <-
    test_plot +
    theme(text = element_text(family = 'Trebuchet MS',
                              color = "#143F2E"),
          title = element_text(family = "Trebuchet MS Bold",
                               color = "#358639"),
          line = element_line(color = "#F2C75D"),
          plot.background = element_rect(fill = "#FFFFFF"),
          legend.position = "none")

  my_result <- theme_ride_high_mustangs(test_plot)

  expect_equal(my_result, correct_result)
})
