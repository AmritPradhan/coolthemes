test_that("color_plots_works", {

  expected <- iris %>%
    ggplot2::ggplot(mapping = ggplot2::aes(x = Species, fill = Species)) +
    ggplot2::geom_bar() +
    ggplot2::scale_fill_manual(values = c("#FF39D5", "#69FF4E", "#79FDFF"))

  fun_result <- color_plots(iris, x = iris$Species, adp_colors = c(dark_pink, lime, turquoise), type = geom_bar(), fill = iris$Species)

  expect_equal(expected, fun_result)
})
