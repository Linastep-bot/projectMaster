test_that("packages load", {
  package_manager(c("tidyverse"))

  expect_true(sapply(c("tidyverse"), requireNamespace))
})
