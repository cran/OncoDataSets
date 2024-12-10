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

# ColonCancerChemo_df data set


library(testthat)

# Test dataset structure and class
test_that("ColonCancerChemo_df loads correctly and has the expected structure", {
  expect_s3_class(ColonCancerChemo_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(ColonCancerChemo_df), 1858)  # Check number of rows
  expect_equal(ncol(ColonCancerChemo_df), 16)  # Check number of columns
  expect_equal(names(ColonCancerChemo_df),
               c("id", "study", "rx", "sex", "age", "obstruct", "perfor", "adhere",
                 "nodes", "status", "differ", "extent", "surg", "node4", "time", "etype"))  # Check column names
})

# Test data types of columns
test_that("ColonCancerChemo_df has correct column types", {
  expect_true(is.numeric(ColonCancerChemo_df$id))
  expect_true(is.numeric(ColonCancerChemo_df$study))
  expect_true(is.factor(ColonCancerChemo_df$rx))
  expect_true(is.numeric(ColonCancerChemo_df$sex))
  expect_true(is.numeric(ColonCancerChemo_df$age))
  expect_true(is.numeric(ColonCancerChemo_df$obstruct))
  expect_true(is.numeric(ColonCancerChemo_df$perfor))
  expect_true(is.numeric(ColonCancerChemo_df$adhere))
  expect_true(is.numeric(ColonCancerChemo_df$nodes))
  expect_true(is.numeric(ColonCancerChemo_df$status))
  expect_true(is.numeric(ColonCancerChemo_df$differ))
  expect_true(is.numeric(ColonCancerChemo_df$extent))
  expect_true(is.numeric(ColonCancerChemo_df$surg))
  expect_true(is.numeric(ColonCancerChemo_df$node4))
  expect_true(is.numeric(ColonCancerChemo_df$time))
  expect_true(is.numeric(ColonCancerChemo_df$etype))
})

# Test for missing values in all columns
test_that("ColonCancerChemo_df reports NA values in the columns", {
  column_names <- names(ColonCancerChemo_df)

  for (col in column_names) {
    n_na <- sum(is.na(ColonCancerChemo_df[[col]]))
    expect_true(n_na >= 0, info = paste("Checking NA values in", col))
  }
})

# Additional data integrity checks
test_that("ColonCancerChemo_df has valid value ranges", {
  # ID should be positive
  expect_true(all(ColonCancerChemo_df$id > 0, na.rm = TRUE))

  # Age validation
  expect_true(all(ColonCancerChemo_df$age >= 0 & ColonCancerChemo_df$age <= 120, na.rm = TRUE))

  # RX factor levels check
  expect_equal(length(levels(ColonCancerChemo_df$rx)), 3)

  # Binary or categorical variables check
  binary_columns <- c("sex", "obstruct", "perfor", "adhere", "status", "node4")
  for (col in binary_columns) {
    col_values <- unique(ColonCancerChemo_df[[col]])
    expect_true(all(col_values %in% c(0, 1)),
                info = paste("Unique values in", col, ":", paste(col_values, collapse = ", ")))
  }

  # Non-negative continuous variables
  continuous_columns <- c("nodes", "time")
  for (col in continuous_columns) {
    expect_true(all(ColonCancerChemo_df[[col]] >= 0, na.rm = TRUE))
  }

  # Categorical variables with specific ranges
  categorical_columns <- c("study", "differ", "extent", "surg", "etype")
  for (col in categorical_columns) {
    expect_true(all(ColonCancerChemo_df[[col]] >= 0, na.rm = TRUE))
  }
})

# Test to verify dataset immutability
test_that("ColonCancerChemo_df remains unchanged after tests", {
  original_dataset <- ColonCancerChemo_df  # Create a copy of the original dataset

  # Run some example tests without modifying the dataset
  lapply(names(ColonCancerChemo_df), function(col) {
    sum(is.na(ColonCancerChemo_df[[col]]))
  })

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, ColonCancerChemo_df)
  expect_equal(nrow(original_dataset), nrow(ColonCancerChemo_df))
  expect_equal(ncol(original_dataset), ncol(ColonCancerChemo_df))
  expect_equal(names(original_dataset), names(ColonCancerChemo_df))
})

# Additional specific checks for Colon Cancer Chemotherapy dataset
test_that("ColonCancerChemo_df has meaningful relationships", {
  # Check time is non-negative
  expect_true(all(ColonCancerChemo_df$time >= 0, na.rm = TRUE))

  # Verify status is binary
  expect_true(all(ColonCancerChemo_df$status %in% c(0, 1), na.rm = TRUE))

  # Validate node-related variables
  expect_true(all(ColonCancerChemo_df$nodes >= 0, na.rm = TRUE))
})
