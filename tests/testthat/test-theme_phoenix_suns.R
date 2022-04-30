test_that("add_purple_gridlines works", {

  test <- iris %>%
    ggplot(mapping = aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_point()

  correctresult <- test +
    theme(panel.grid.major = element_line(color = "#5350ea", size = .7),
          panel.grid.minor = element_line(color = "#5350ea", size = .7))

  res <- test +
    add_purple_gridlines()

  expect_equal(correctresult, res)
})

test_that("theme_phoenix_suns panel background color works", {

  test <- iris %>%
    ggplot(mapping = aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_point() +
    ggtitle("Suns")

  correct_result <- test +
    theme(panel.background = element_rect(fill = "#E56020"),
          plot.background = element_rect(fill = "#5350ea"),
          axis.title = element_text(color = "#E56020", face = "bold"),
          axis.text = element_text(color = "#E56020", face = "bold"),
          panel.grid.major = element_line(color = "#5350ea", size = .7),
          panel.grid.minor = element_line(color = "#5350ea", size = .7),
          plot.title = element_text(color = "#E56020",
                                    face = "bold",
                                    size = 15))

  correct_color <- correct_result$theme$panel.background$color

  res <- test +
    theme_phoenix_suns()

  res_color <- res$theme$panel.background$color

  expect_equal(correct_color, res_color)
})

test_that("theme_phoenix_suns plot background color works", {

  test <- iris %>%
    ggplot(mapping = aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_point() +
    ggtitle("Suns")

  correct_result <- test +
    theme(panel.background = element_rect(fill = "#E56020"),
          plot.background = element_rect(fill = "#5350ea"),
          axis.title = element_text(color = "#E56020", face = "bold"),
          axis.text = element_text(color = "#E56020", face = "bold"),
          panel.grid.major = element_line(color = "#5350ea", size = .7),
          panel.grid.minor = element_line(color = "#5350ea", size = .7),
          plot.title = element_text(color = "#E56020",
                                    face = "bold",
                                    size = 15))

  correct_color <- correct_result$theme$plot.background$color

  res <- test +
    theme_phoenix_suns()

  res_color <- res$theme$plot.background$color

  expect_equal(correct_color, res_color)
})

test_that("theme_phoenix_suns axis title color works", {

  test <- iris %>%
    ggplot(mapping = aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_point() +
    ggtitle("Suns")

  correct_result <- test +
    theme(panel.background = element_rect(fill = "#E56020"),
          plot.background = element_rect(fill = "#5350ea"),
          axis.title = element_text(color = "#E56020", face = "bold"),
          axis.text = element_text(color = "#E56020", face = "bold"),
          panel.grid.major = element_line(color = "#5350ea", size = .7),
          panel.grid.minor = element_line(color = "#5350ea", size = .7),
          plot.title = element_text(color = "#E56020",
                                    face = "bold",
                                    size = 15))

  correct_color <- correct_result$theme$axis.title$color

  res <- test +
    theme_phoenix_suns()

  res_color <- res$theme$axis.title$color

  expect_equal(correct_color, res_color)
})

test_that("theme_phoenix_suns axis text color works", {

  test <- iris %>%
    ggplot(mapping = aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_point() +
    ggtitle("Suns")

  correct_result <- test +
    theme(panel.background = element_rect(fill = "#E56020"),
          plot.background = element_rect(fill = "#5350ea"),
          axis.title = element_text(color = "#E56020", face = "bold"),
          axis.text = element_text(color = "#E56020", face = "bold"),
          panel.grid.major = element_line(color = "#5350ea", size = .7),
          panel.grid.minor = element_line(color = "#5350ea", size = .7),
          plot.title = element_text(color = "#E56020",
                                    face = "bold",
                                    size = 15))

  correct_color <- correct_result$theme$axis.text$color

  res <- test +
    theme_phoenix_suns()

  res_color <- res$theme$axis.text$color

  expect_equal(correct_color, res_color)
})

test_that("theme_phoenix_suns plot title color works", {

  test <- iris %>%
    ggplot(mapping = aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_point() +
    ggtitle("Suns")

  correct_result <- test +
    theme(panel.background = element_rect(fill = "#E56020"),
          plot.background = element_rect(fill = "#5350ea"),
          axis.title = element_text(color = "#E56020", face = "bold"),
          axis.text = element_text(color = "#E56020", face = "bold"),
          panel.grid.major = element_line(color = "#5350ea", size = .7),
          panel.grid.minor = element_line(color = "#5350ea", size = .7),
          plot.title = element_text(color = "#E56020",
                                    face = "bold",
                                    size = 15))

  correct_color <- correct_result$theme$plot.title$color

  res <- test +
    theme_phoenix_suns()

  res_color <- res$theme$plot.title$color

  expect_equal(correct_color, res_color)
})
