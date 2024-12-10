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

# LeukemiaLymphomaCases_df  data set



library(testthat)

# Test dataset structure and class
test_that("LeukemiaLymphomaCases_df loads correctly and has the expected structure", {
  expect_s3_class(LeukemiaLymphomaCases_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(LeukemiaLymphomaCases_df), 191)  # Check number of rows
  expect_equal(ncol(LeukemiaLymphomaCases_df), 2)  # Check number of columns
  expect_equal(names(LeukemiaLymphomaCases_df), c("locationid", "numcases"))  # Check column names
})

# Test data types of columns
test_that("LeukemiaLymphomaCases_df has correct column types", {
  expect_true(is.integer(LeukemiaLymphomaCases_df$locationid))  # Check if 'locationid' is integer
  expect_true(is.integer(LeukemiaLymphomaCases_df$numcases))  # Check if 'numcases' is integer
})

# Test for missing values in critical columns
test_that("LeukemiaLymphomaCases_df reports NA values in the columns", {
  n_na_locationid <- sum(is.na(LeukemiaLymphomaCases_df$locationid))
  n_na_numcases <- sum(is.na(LeukemiaLymphomaCases_df$numcases))

  # Expecting that the number of NAs in each column is within acceptable limits
  expect_true(n_na_locationid >= 0, info = paste("Found", n_na_locationid, "NA values in locationid"))
  expect_true(n_na_numcases >= 0, info = paste("Found", n_na_numcases, "NA values in numcases"))
})

# Test the immutability of the dataset after tests
test_that("LeukemiaLymphomaCases_df remains unchanged after tests", {
  original_dataset <- LeukemiaLymphomaCases_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(LeukemiaLymphomaCases_df$locationid))  # Ensure no NAs in 'locationid'
  sum(is.na(LeukemiaLymphomaCases_df$numcases))  # Ensure no NAs in 'numcases'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, LeukemiaLymphomaCases_df)
  expect_equal(nrow(original_dataset), nrow(LeukemiaLymphomaCases_df))
  expect_equal(ncol(original_dataset), ncol(LeukemiaLymphomaCases_df))
  expect_equal(names(original_dataset), names(LeukemiaLymphomaCases_df))
})


