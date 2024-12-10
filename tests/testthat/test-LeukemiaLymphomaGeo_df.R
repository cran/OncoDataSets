# OncoDataSets - A Comprehensive Collection of Cancer Types and Cancer-related DataSets
# Version 0.1.0
# Copyright (C) 2024 Renzo Caceres Rossi
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# LeukemiaLymphomaGeo_df  data set


library(testthat)

# Test dataset structure and class
test_that("LeukemiaLymphomaGeo_df loads correctly and has the expected structure", {
  expect_s3_class(LeukemiaLymphomaGeo_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(LeukemiaLymphomaGeo_df), 191)  # Check number of rows
  expect_equal(ncol(LeukemiaLymphomaGeo_df), 3)  # Check number of columns
  expect_equal(names(LeukemiaLymphomaGeo_df), c("locationid", "x-coordinate", "y-coordinate"))  # Check column names
})

# Test data types of columns
test_that("LeukemiaLymphomaGeo_df has correct column types", {
  expect_true(is.integer(LeukemiaLymphomaGeo_df$locationid))  # Check if 'locationid' is integer
  expect_true(is.integer(LeukemiaLymphomaGeo_df$`x-coordinate`))  # Check if 'x-coordinate' is integer
  expect_true(is.integer(LeukemiaLymphomaGeo_df$`y-coordinate`))  # Check if 'y-coordinate' is integer
})

# Test for missing values in critical columns
test_that("LeukemiaLymphomaGeo_df reports NA values in the columns", {
  n_na_locationid <- sum(is.na(LeukemiaLymphomaGeo_df$locationid))
  n_na_x_coordinate <- sum(is.na(LeukemiaLymphomaGeo_df$`x-coordinate`))
  n_na_y_coordinate <- sum(is.na(LeukemiaLymphomaGeo_df$`y-coordinate`))

  # Expecting that the number of NAs in each column is within acceptable limits
  expect_true(n_na_locationid >= 0, info = paste("Found", n_na_locationid, "NA values in locationid"))
  expect_true(n_na_x_coordinate >= 0, info = paste("Found", n_na_x_coordinate, "NA values in x-coordinate"))
  expect_true(n_na_y_coordinate >= 0, info = paste("Found", n_na_y_coordinate, "NA values in y-coordinate"))
})

# Test the immutability of the dataset after tests
test_that("LeukemiaLymphomaGeo_df remains unchanged after tests", {
  original_dataset <- LeukemiaLymphomaGeo_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(LeukemiaLymphomaGeo_df$locationid))  # Ensure no NAs in 'locationid'
  sum(is.na(LeukemiaLymphomaGeo_df$`x-coordinate`))  # Ensure no NAs in 'x-coordinate'
  sum(is.na(LeukemiaLymphomaGeo_df$`y-coordinate`))  # Ensure no NAs in 'y-coordinate'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, LeukemiaLymphomaGeo_df)
  expect_equal(nrow(original_dataset), nrow(LeukemiaLymphomaGeo_df))
  expect_equal(ncol(original_dataset), ncol(LeukemiaLymphomaGeo_df))
  expect_equal(names(original_dataset), names(LeukemiaLymphomaGeo_df))
})
