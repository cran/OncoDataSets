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

# AIPulmonaryNodules_df  data set

library(testthat)

# Test dataset structure and class
test_that("AIPulmonaryNodules_df loads correctly and has the expected structure", {
  expect_s3_class(AIPulmonaryNodules_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(AIPulmonaryNodules_df), 200)  # Check number of rows
  expect_equal(ncol(AIPulmonaryNodules_df), 2)  # Check number of columns
  expect_equal(names(AIPulmonaryNodules_df)[1], "cancer")  # Check first column name
  expect_equal(names(AIPulmonaryNodules_df)[2], "rating")  # Check second column name
})

# Test data types of columns
test_that("AIPulmonaryNodules_df has correct column types", {
  expect_true(is.integer(AIPulmonaryNodules_df$cancer))  # Check if 'cancer' is an integer
  expect_true(is.integer(AIPulmonaryNodules_df$rating))  # Check if 'rating' is an integer
})

# Test for missing values (NA) in the dataset
test_that("AIPulmonaryNodules_df reports NA values in the columns", {
  # Check for NAs in the 'cancer' column (allow 22 NAs)
  expect_true(sum(is.na(AIPulmonaryNodules_df$cancer)) == 22, info = paste("Found", sum(is.na(AIPulmonaryNodules_df$cancer)), "NA values in 'cancer'"))

  # Check for NAs in the 'rating' column (allow 22 NAs)
  expect_true(sum(is.na(AIPulmonaryNodules_df$rating)) == 22, info = paste("Found", sum(is.na(AIPulmonaryNodules_df$rating)), "NA values in 'rating'"))
})

# Test to verify dataset immutability
test_that("AIPulmonaryNodules_df remains unchanged after tests", {
  original_dataset <- AIPulmonaryNodules_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(AIPulmonaryNodules_df$cancer))  # Example test
  sum(is.na(AIPulmonaryNodules_df$rating))  # Example test

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, AIPulmonaryNodules_df)
  expect_equal(nrow(original_dataset), nrow(AIPulmonaryNodules_df))
  expect_equal(ncol(original_dataset), ncol(AIPulmonaryNodules_df))
  expect_equal(names(original_dataset), names(AIPulmonaryNodules_df))
})
