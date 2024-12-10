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

# AflatoxinLiverCancer_df data set


library(testthat)

# Test dataset structure and class
test_that("AflatoxinLiverCancer_df loads correctly and has the expected structure", {
  expect_s3_class(AflatoxinLiverCancer_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(AflatoxinLiverCancer_df), 6)  # Check number of rows
  expect_equal(ncol(AflatoxinLiverCancer_df), 3)  # Check number of columns
  expect_equal(names(AflatoxinLiverCancer_df), c("dose", "total", "tumor"))  # Check column names
})

# Test data types of columns
test_that("AflatoxinLiverCancer_df has correct column types", {
  expect_true(is.integer(AflatoxinLiverCancer_df$dose))  # Check if 'dose' is integer
  expect_true(is.integer(AflatoxinLiverCancer_df$total))  # Check if 'total' is integer
  expect_true(is.integer(AflatoxinLiverCancer_df$tumor))  # Check if 'tumor' is integer
})

# Test for missing values in critical columns
test_that("AflatoxinLiverCancer_df reports NA values in the columns", {
  # Since this is a small dataset, we check if the NA count is acceptable
  expect_true(sum(is.na(AflatoxinLiverCancer_df$dose)) <= 1, info = paste("Found", sum(is.na(AflatoxinLiverCancer_df$dose)), "NA values in dose"))
  expect_true(sum(is.na(AflatoxinLiverCancer_df$total)) <= 1, info = paste("Found", sum(is.na(AflatoxinLiverCancer_df$total)), "NA values in total"))
  expect_true(sum(is.na(AflatoxinLiverCancer_df$tumor)) <= 1, info = paste("Found", sum(is.na(AflatoxinLiverCancer_df$tumor)), "NA values in tumor"))
})

# Test to verify dataset immutability
test_that("AflatoxinLiverCancer_df remains unchanged after tests", {
  original_dataset <- AflatoxinLiverCancer_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(AflatoxinLiverCancer_df$dose))  # Example test
  sum(is.na(AflatoxinLiverCancer_df$total))  # Example test

  # Check if the dataset remains identical after the tests
  expect_identical(original_dataset, AflatoxinLiverCancer_df)
  expect_equal(nrow(original_dataset), nrow(AflatoxinLiverCancer_df))
  expect_equal(ncol(original_dataset), ncol(AflatoxinLiverCancer_df))
  expect_equal(names(original_dataset), names(AflatoxinLiverCancer_df))
})





