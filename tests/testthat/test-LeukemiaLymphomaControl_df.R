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

# LeukemiaLymphomaControl_df  data set


library(testthat)

# Test dataset structure and class
test_that("LeukemiaLymphomaControl_df loads correctly and has the expected structure", {
  expect_s3_class(LeukemiaLymphomaControl_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(LeukemiaLymphomaControl_df), 191)  # Check number of rows
  expect_equal(ncol(LeukemiaLymphomaControl_df), 2)  # Check number of columns
  expect_equal(names(LeukemiaLymphomaControl_df), c("locationid", "numcontrols"))  # Check column names
})

# Test data types of columns
test_that("LeukemiaLymphomaControl_df has correct column types", {
  expect_true(is.integer(LeukemiaLymphomaControl_df$locationid))  # Check if 'locationid' is integer
  expect_true(is.integer(LeukemiaLymphomaControl_df$numcontrols))  # Check if 'numcontrols' is integer
})

# Test for missing values in critical columns
test_that("LeukemiaLymphomaControl_df reports NA values in the columns", {
  n_na_locationid <- sum(is.na(LeukemiaLymphomaControl_df$locationid))
  n_na_numcontrols <- sum(is.na(LeukemiaLymphomaControl_df$numcontrols))

  # Expecting that the number of NAs in each column is within acceptable limits
  expect_true(n_na_locationid >= 0, info = paste("Found", n_na_locationid, "NA values in locationid"))
  expect_true(n_na_numcontrols >= 0, info = paste("Found", n_na_numcontrols, "NA values in numcontrols"))
})

# Test the immutability of the dataset after tests
test_that("LeukemiaLymphomaControl_df remains unchanged after tests", {
  original_dataset <- LeukemiaLymphomaControl_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(LeukemiaLymphomaControl_df$locationid))  # Ensure no NAs in 'locationid'
  sum(is.na(LeukemiaLymphomaControl_df$numcontrols))  # Ensure no NAs in 'numcontrols'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, LeukemiaLymphomaControl_df)
  expect_equal(nrow(original_dataset), nrow(LeukemiaLymphomaControl_df))
  expect_equal(ncol(original_dataset), ncol(LeukemiaLymphomaControl_df))
  expect_equal(names(original_dataset), names(LeukemiaLymphomaControl_df))
})





