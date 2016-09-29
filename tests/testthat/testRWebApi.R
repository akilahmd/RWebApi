library(testthat)
library(RWebApi)

test_that("Checking if the output is same",{
  expect_that((geo_api("Paris,France")$results[[1]]$geometry$location$lat),equals(48.856614))
  expect_that(geo_api("Paris,France")$results[[1]]$geometry$location$lng,equals(2.3522219))
  expect_that(geo_api("Paris,France")$results[[1]]$formatted_address,equals("Paris, France"))
  
}
)

test_that("Test for Invalid Input",{
  
  expect_that(geo_api("???")$status,equals("ZERO_RESULTS"))
  
}
)
  