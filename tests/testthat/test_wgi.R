library(dplyr)

context("wgi")

test_that("World Governance Indicators data downloads correctly", {
  skip_on_cran()
  skip_on_travis()
  wgi_democracy <- download_wgi_voice_and_accountability(verbose = FALSE)
  expect_equal(nrow(wgi_democracy), 4140)
  expect_equal(max(wgi_democracy$year), 2018)
  expect_equal(sum(is.na(wgi_democracy$GWn)), 253)
})
