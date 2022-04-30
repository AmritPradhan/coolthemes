test_that("theme_ride_high_mustangs returns correct text color", {
  test_plot <- iris %>%
    ggplot(mapping = aes(x = Sepal.Width, y = Sepal.Length)) +
    geom_point() +
    ggtitle("test")

  correct_result <- test_plot +
    theme_bw() +
    theme(text = element_text(family = "Trebuchet MS",
                              size = 15,
                              color = "#F2C75D"),
          plot.title = element_text(family = "Trebuchet MS Bold",
                                    size = 20,
                                    color = "#143F2E"),
          panel.background = element_rect(fill = "ivory"),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          axis.text = element_text(size = 12,
                                   color = "#358639"),
          legend.position = "none")

  color_correct <- correct_result$theme$text$colour

  res <- test_plot +
    theme_ride_high_mustangs()

  color_res <- res$theme$text$colour

  expect_equal(color_res, color_correct)

})

test_that("theme_ride_high_mustangs returns correct title color", {

  test_plot <- iris %>%
    ggplot(mapping = aes(x = Sepal.Width, y = Sepal.Length)) +
    geom_point() +
    ggtitle("test")
  correct_result <- test_plot +
    theme_bw() +
    theme(text = element_text(family = "Trebuchet MS",
                              size = 15,
                              color = "#F2C75D"),
          plot.title = element_text(family = "Trebuchet MS Bold",
                                    size = 20,
                                    color = "#143F2E"),
          panel.background = element_rect(fill = "ivory"),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          axis.text = element_text(size = 12,
                                   color = "#358639"),
          legend.position = "none")

  color_correct <- correct_result$theme$plot.title$colour

  res <- test_plot +
    theme_ride_high_mustangs()

  color_res <- res$theme$plot.title$colour

  expect_equal(color_res, color_correct)

})

test_that("theme_ride_high_mustangs returns correct background color", {
  test_plot <- iris %>%
    ggplot(mapping = aes(x = Sepal.Width, y = Sepal.Length)) +
    geom_point() +
    ggtitle("test")

  correct_result <- test_plot +
    theme_bw() +
    theme(text = element_text(family = "Trebuchet MS",
                              size = 15,
                              color = "#F2C75D"),
          plot.title = element_text(family = "Trebuchet MS Bold",
                                    size = 20,
                                    color = "#143F2E"),
          panel.background = element_rect(fill = "ivory"),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          axis.text = element_text(size = 12,
                                   color = "#358639"),
          legend.position = "none")

  color_correct <- correct_result$theme$panel.background$colour

  res <- test_plot +
    theme_ride_high_mustangs()

  color_res <- res$theme$panel.background$colour

  expect_equal(color_res, color_correct)

})

test_that("theme_ride_high_mustangs returns correct title font", {
  test_plot <- iris %>%
    ggplot(mapping = aes(x = Sepal.Width, y = Sepal.Length)) +
    geom_point() +
    ggtitle("test")

  correct_result <- test_plot +
    theme_bw() +
    theme(text = element_text(family = "Trebuchet MS",
                              size = 15,
                              color = "#F2C75D"),
          plot.title = element_text(family = "Trebuchet MS Bold",
                                    size = 20,
                                    color = "#143F2E"),
          panel.background = element_rect(fill = "ivory"),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          axis.text = element_text(size = 12,
                                   color = "#358639"),
          legend.position = "none")

  t_correct <- correct_result$theme$text$family

  res <- test_plot +
    theme_ride_high_mustangs()

  tres <- res$theme$text$family

  expect_equal(tres, t_correct)

})

test_that("theme_ride_high_mustangs returns correct text font", {
  test_plot <- iris %>%
    ggplot(mapping = aes(x = Sepal.Width, y = Sepal.Length)) +
    geom_point() +
    ggtitle("test")

  correct_result <- test_plot +
    theme_bw() +
    theme(text = element_text(family = "Trebuchet MS",
                              size = 15,
                              color = "#F2C75D"),
          plot.title = element_text(family = "Trebuchet MS Bold",
                                    size = 20,
                                    color = "#143F2E"),
          panel.background = element_rect(fill = "ivory"),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          axis.text = element_text(size = 12,
                                   color = "#358639"),
          legend.position = "none")

  title_correct <- correct_result$theme$plot.title$family

  res <- test_plot +
    theme_ride_high_mustangs()

  title_res <- res$theme$plot.title$family

  expect_equal(title_res, title_correct)

})

test_that("change_axis_text returns correct color of axis text", {
  test_plot <- iris %>%
    ggplot(mapping = aes(x = Sepal.Width, y = Sepal.Length)) +
    geom_point() +
    ggtitle("test")
  try_plot <- iris %>%
    ggplot(mapping = aes(y = Sepal.Length, x = Sepal.Width)) +
    geom_line()+
    ggtitle("test")

    correct_result <- try_plot +
      theme(axis.text = element_text(size = 12,
                                     color = "#358639"))

    correct_axis <- correct_result$theme$axis.text$colour

    my_result <- try_plot +
      change_axis_text()

    axis_try <- my_result$theme$axis.text$colour

    expect_equal(correct_axis, axis_try)


})
