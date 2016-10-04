library(testthat)
library(RWebApi)

test_that("Checking if the output is same",{
  expect_that(geo_api("Paris,France")$latitude,equals(48.856614))
  expect_that(geo_api("Paris,France")$longitude,equals(2.3522219))
  expect_that(geo_api("Lahore")$latitude,equals(31.5546061))
  expect_that(geo_api("Lahore")$longitude,equals(74.3571581))
  expect_that(geo_api("Asmara")$latitude,equals(15.3228767))
  expect_that(geo_api("Asmara")$longitude,equals(38.9250517))
  
}
)

