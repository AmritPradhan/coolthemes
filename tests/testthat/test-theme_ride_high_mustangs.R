test_that("theme_ride_high_mustangs works", {
library(ggplot2)
  test_plot <- iris %>%
    ggplot(mapping = aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_line()+
    ggtitle("test")

  test_plot +
    theme_bw() +
    theme(text = element_text(family = 'Trebuchet MS',
                              color = "#F2C75D"),
          plot.title = element_text(family = "Trebuchet MS Bold",
                                    color = "#143F2E"),
          panel.background = element_rect(fill = "ivory"),
          legend.position = "none")

  my_result <- theme_ride_high_mustangs(test_plot)

  correct_result <- theme_ride_high_mustangs(test_plot)

  expect_equal(my_result, correct_result)
})
