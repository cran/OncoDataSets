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

# ICGCLiver_df  data set

library(testthat)

# Test dataset structure and class
test_that("ICGCLiver_df loads correctly and has the expected structure", {
  expect_s3_class(ICGCLiver_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(ICGCLiver_df), 232)  # Check number of rows
  expect_equal(ncol(ICGCLiver_df), 6)  # Check number of columns
  expect_equal(names(ICGCLiver_df), c("time", "status", "ANLN", "CENPA", "GPR182", "BCO2"))  # Check column names
})

# Test data types of columns
test_that("ICGCLiver_df has correct column types", {
  expect_true(is.numeric(ICGCLiver_df$time))  # Check if 'time' is numeric
  expect_true(is.integer(ICGCLiver_df$status))  # Check if 'status' is integer
  expect_true(is.numeric(ICGCLiver_df$ANLN))  # Check if 'ANLN' is numeric
  expect_true(is.numeric(ICGCLiver_df$CENPA))  # Check if 'CENPA' is numeric
  expect_true(is.numeric(ICGCLiver_df$GPR182))  # Check if 'GPR182' is numeric
  expect_true(is.numeric(ICGCLiver_df$BCO2))  # Check if 'BCO2' is numeric
})

# Test for missing values in critical columns
test_that("ICGCLiver_df reports NA values in the columns", {
  # Check the number of NA values for each critical column
  expect_true(sum(is.na(ICGCLiver_df$time)) <= 1, info = paste("Found", sum(is.na(ICGCLiver_df$time)), "NA values in time"))
  expect_true(sum(is.na(ICGCLiver_df$status)) <= 1, info = paste("Found", sum(is.na(ICGCLiver_df$status)), "NA values in status"))
  expect_true(sum(is.na(ICGCLiver_df$ANLN)) <= 1, info = paste("Found", sum(is.na(ICGCLiver_df$ANLN)), "NA values in ANLN"))
  expect_true(sum(is.na(ICGCLiver_df$CENPA)) <= 1, info = paste("Found", sum(is.na(ICGCLiver_df$CENPA)), "NA values in CENPA"))
  expect_true(sum(is.na(ICGCLiver_df$GPR182)) <= 1, info = paste("Found", sum(is.na(ICGCLiver_df$GPR182)), "NA values in GPR182"))
  expect_true(sum(is.na(ICGCLiver_df$BCO2)) <= 1, info = paste("Found", sum(is.na(ICGCLiver_df$BCO2)), "NA values in BCO2"))
})

# Test to verify dataset immutability
test_that("ICGCLiver_df remains unchanged after tests", {
  original_dataset <- ICGCLiver_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(ICGCLiver_df$time))  # Example test
  sum(is.na(ICGCLiver_df$status))  # Example test

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, ICGCLiver_df)
  expect_equal(nrow(original_dataset), nrow(ICGCLiver_df))
  expect_equal(ncol(original_dataset), ncol(ICGCLiver_df))
  expect_equal(names(original_dataset), names(ICGCLiver_df))
})


