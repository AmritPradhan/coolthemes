test_that("change_background_color works",{

  library(ggplot2)

  test_plot <- iris %>%
    ggplot(mapping = aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_point()

  my_res <- test_plot +
    change_background_color(background_color = "blue")

  correct_res <- test_plot +
    theme(panel.background = element_rect(fill = "blue"),
          plot.background = element_rect(fill = "blue"),
          legend.background = element_rect(fill = "blue"),
          legend.key = element_rect(fill = "blue"))

  res_color <- my_res$theme$plot.background$fill

  correct_color <- correct_res$theme$plot.background$fill

  expect_equal(res_color, correct_color)

})

test_that("theme_midnight returns the correct text color", {

  test_plot <- iris %>%
    ggplot(mapping = aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_point()

  my_res <- test_plot +
    theme_midnight()

  correct_res <- test_plot +
    theme(
      panel.grid.minor = element_line(color = "floralwhite"),
      panel.grid.major = element_line(color = "floralwhite"),

      text = element_text(color = "wheat"),
      axis.text = element_text(color = "wheat"),

      plot.title = element_text(color = "wheat",
                                size = 19,
                                face = "bold",
                                hjust = 0,
                                vjust = 3),
      plot.subtitle = element_text(color = "wheat",
                                   size = 13),
      plot.caption = element_text(color = "wheat"),

      panel.background = element_rect(fill = "gray40"),
      plot.background = element_rect(fill = "gray40"),
      legend.background = element_rect(fill = "gray40"),
      legend.key = element_rect(fill = "gray40")
    )

  res <- my_res$theme$text$colour

  correct <- correct_res$theme$text$colour

  expect_equal(res, correct)

})

test_that("theme_midnight returns the correct title color", {

  test_plot <- iris %>%
    ggplot(mapping = aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_point()

  my_res <- test_plot +
    theme_midnight()

  correct_res <- test_plot +
    theme(
      panel.grid.minor = element_line(color = "floralwhite"),
      panel.grid.major = element_line(color = "floralwhite"),

      text = element_text(color = "wheat"),
      axis.text = element_text(color = "wheat"),

      plot.title = element_text(color = "wheat",
                                size = 19,
                                face = "bold",
                                hjust = 0,
                                vjust = 3),
      plot.subtitle = element_text(color = "wheat",
                                   size = 13),
      plot.caption = element_text(color = "wheat"),

      panel.background = element_rect(fill = "gray40"),
      plot.background = element_rect(fill = "gray40"),
      legend.background = element_rect(fill = "gray40"),
      legend.key = element_rect(fill = "gray40")
    )

  res <- my_res$theme$plot.title$colour

  correct <- correct_res$theme$plot.title$colour

  expect_equal(res, correct)

})

test_that("theme_midnight returns the correct background color", {

  test_plot <- iris %>%
    ggplot(mapping = aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_point()

  my_res <- test_plot +
    theme_midnight(background_color = "orange")

  correct_res <- test_plot +
    theme(
      panel.grid.minor = element_line(color = "floralwhite"),
      panel.grid.major = element_line(color = "floralwhite"),

      text = element_text(color = "wheat"),
      axis.text = element_text(color = "wheat"),

      plot.title = element_text(color = "wheat",
                                size = 19,
                                face = "bold",
                                hjust = 0,
                                vjust = 3),
      plot.subtitle = element_text(color = "wheat",
                                   size = 13),
      plot.caption = element_text(color = "wheat"),

      panel.background = element_rect(fill = "orange"),
      plot.background = element_rect(fill = "orange"),
      legend.background = element_rect(fill = "oragne"),
      legend.key = element_rect(fill = "oragne")
    )

  res <- my_res$theme$plot.background$colour

  correct <- correct_res$theme$plot.background$colour

  expect_equal(res, correct)

})


test_that("theme_midnight returns the grid line color", {

  test_plot <- iris %>%
    ggplot(mapping = aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_point()

  my_res <- test_plot +
    theme_midnight()

  correct_res <- test_plot +
    theme(
      panel.grid.minor = element_line(color = "floralwhite"),
      panel.grid.major = element_line(color = "floralwhite"),

      text = element_text(color = "wheat"),
      axis.text = element_text(color = "wheat"),

      plot.title = element_text(color = "wheat",
                                size = 19,
                                face = "bold",
                                hjust = 0,
                                vjust = 3),
      plot.subtitle = element_text(color = "wheat",
                                   size = 13),
      plot.caption = element_text(color = "wheat"),

      panel.background = element_rect(fill = "gray40"),
      plot.background = element_rect(fill = "gray40"),
      legend.background = element_rect(fill = "gray40"),
      legend.key = element_rect(fill = "gray40")
    )

  res <- my_res$theme$panel.grid.major$colour

  correct <- correct_res$theme$panel.grid.major$colour

  expect_equal(res, correct)

})
