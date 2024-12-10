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

# CA19PancreaticCancer_df  data set

library(testthat)

# Test dataset structure and class
test_that("CA19PancreaticCancer_df loads correctly and has the expected structure", {
  expect_s3_class(CA19PancreaticCancer_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(CA19PancreaticCancer_df), 22)  # Check number of rows
  expect_equal(ncol(CA19PancreaticCancer_df), 5)  # Check number of columns
  expect_equal(names(CA19PancreaticCancer_df)[1], "study")  # Check first column name
  expect_equal(names(CA19PancreaticCancer_df)[5], "TN")  # Check last column name
})

# Test data types of columns
test_that("CA19PancreaticCancer_df has correct column types", {
  expect_true(is.character(CA19PancreaticCancer_df$study))  # Check if 'study' is a character vector
  expect_true(is.integer(CA19PancreaticCancer_df$TP))  # Check if 'TP' is an integer
  expect_true(is.integer(CA19PancreaticCancer_df$FP))  # Check if 'FP' is an integer
  expect_true(is.integer(CA19PancreaticCancer_df$FN))  # Check if 'FN' is an integer
  expect_true(is.integer(CA19PancreaticCancer_df$TN))  # Check if 'TN' is an integer
})

# Test for missing values (NA) in the dataset
test_that("CA19PancreaticCancer_df reports NA values in the columns", {
  # Check for NAs in the 'study' column
  expect_true(sum(is.na(CA19PancreaticCancer_df$study)) <= 1, info = paste("Found", sum(is.na(CA19PancreaticCancer_df$study)), "NA values in 'study'"))

  # Check for NAs in the integer columns (TP, FP, FN, TN)
  for (col in c("TP", "FP", "FN", "TN")) {
    expect_true(sum(is.na(CA19PancreaticCancer_df[[col]])) <= 1, info = paste("Found", sum(is.na(CA19PancreaticCancer_df[[col]])), "NA values in", col))
  }
})

# Test to verify dataset immutability
test_that("CA19PancreaticCancer_df remains unchanged after tests", {
  original_dataset <- CA19PancreaticCancer_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(CA19PancreaticCancer_df$study))  # Example test
  sum(is.na(CA19PancreaticCancer_df$TP))  # Example test

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, CA19PancreaticCancer_df)
  expect_equal(nrow(original_dataset), nrow(CA19PancreaticCancer_df))
  expect_equal(ncol(original_dataset), ncol(CA19PancreaticCancer_df))
  expect_equal(names(original_dataset), names(CA19PancreaticCancer_df))
})




