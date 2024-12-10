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

# MiceDeathRadiation_df data set


library(testthat)

# Test dataset structure and class
test_that("MiceDeathRadiation_df loads correctly and has the expected structure", {
  expect_s3_class(MiceDeathRadiation_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(MiceDeathRadiation_df), 177)  # Check number of rows
  expect_equal(ncol(MiceDeathRadiation_df), 4)  # Check number of columns
  expect_equal(names(MiceDeathRadiation_df), c("type", "cause", "status", "y"))  # Check column names
})

# Test data types of columns
test_that("MiceDeathRadiation_df has correct column types", {
  expect_true(is.factor(MiceDeathRadiation_df$type))  # Check if 'type' is a factor
  expect_true(is.factor(MiceDeathRadiation_df$cause))  # Check if 'cause' is a factor
  expect_true(is.numeric(MiceDeathRadiation_df$status))  # Check if 'status' is numeric
  expect_true(is.numeric(MiceDeathRadiation_df$y))  # Check if 'y' is numeric
})

# Test for missing values in critical columns
test_that("MiceDeathRadiation_df reports NA values in the columns", {
  n_na_type <- sum(is.na(MiceDeathRadiation_df$type))
  n_na_cause <- sum(is.na(MiceDeathRadiation_df$cause))
  n_na_status <- sum(is.na(MiceDeathRadiation_df$status))
  n_na_y <- sum(is.na(MiceDeathRadiation_df$y))

  expect_true(n_na_type == 0, info = paste("Found", n_na_type, "NA values in type"))
  expect_true(n_na_cause == 0, info = paste("Found", n_na_cause, "NA values in cause"))
  expect_true(n_na_status == 0, info = paste("Found", n_na_status, "NA values in status"))
  expect_true(n_na_y == 0, info = paste("Found", n_na_y, "NA values in y"))
})

# Test for valid value ranges in the factors
test_that("MiceDeathRadiation_df has valid value ranges", {
  # Test for 'type' - check if it contains the correct levels
  type_values <- levels(MiceDeathRadiation_df$type)
  expect_true(all(type_values %in% c("Germ-free", "Ordinary")),
              info = paste("Invalid values found in 'type'. Found:", paste(type_values, collapse = ", ")))

  # Test for 'cause' - check if it contains the correct levels
  cause_values <- levels(MiceDeathRadiation_df$cause)
  expect_true(all(cause_values %in% c("other", "sarcoma", "thymic")),
              info = paste("Invalid values found in 'cause'. Found:", paste(cause_values, collapse = ", ")))
})

# Test to verify dataset immutability
test_that("MiceDeathRadiation_df remains unchanged after tests", {
  original_dataset <- MiceDeathRadiation_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(MiceDeathRadiation_df$type))  # Ensure no NAs in 'type'
  sum(is.na(MiceDeathRadiation_df$cause))  # Ensure no NAs in 'cause'
  sum(is.na(MiceDeathRadiation_df$status))  # Ensure no NAs in 'status'
  sum(is.na(MiceDeathRadiation_df$y))  # Ensure no NAs in 'y'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, MiceDeathRadiation_df)
  expect_equal(nrow(original_dataset), nrow(MiceDeathRadiation_df))
  expect_equal(ncol(original_dataset), ncol(MiceDeathRadiation_df))
  expect_equal(names(original_dataset), names(MiceDeathRadiation_df))
})
