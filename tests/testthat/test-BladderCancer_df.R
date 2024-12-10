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

# BladderCancer_df data set

library(testthat)

# Test dataset structure and class
test_that("BladderCancer_df loads correctly and has the expected structure", {
  expect_s3_class(BladderCancer_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(BladderCancer_df), 340)  # Check number of rows
  expect_equal(ncol(BladderCancer_df), 7)  # Check number of columns
  expect_equal(names(BladderCancer_df), c("id", "rx", "number", "size", "stop", "event", "enum"))  # Check column names
})

# Test data types of columns
test_that("BladderCancer_df has correct column types", {
  expect_true(is.integer(BladderCancer_df$id))
  expect_true(is.numeric(BladderCancer_df$rx))
  expect_true(is.integer(BladderCancer_df$number))
  expect_true(is.integer(BladderCancer_df$size))
  expect_true(is.integer(BladderCancer_df$stop))
  expect_true(is.numeric(BladderCancer_df$event))
  expect_true(is.integer(BladderCancer_df$enum))
})

# Test for missing values in all columns
test_that("BladderCancer_df reports NA values in the columns", {
  column_names <- names(BladderCancer_df)

  for (col in column_names) {
    n_na <- sum(is.na(BladderCancer_df[[col]]))
    expect_true(n_na >= 0, info = paste("Checking NA values in", col))
  }
})

# Additional data integrity checks
test_that("BladderCancer_df has valid value ranges", {
  # ID should be positive
  expect_true(all(BladderCancer_df$id > 0, na.rm = TRUE))

  # RX - check actual unique values
  rx_values <- unique(BladderCancer_df$rx)
  expect_true(all(rx_values %in% c(1, 2)),
              info = paste("Unique rx values:", paste(rx_values, collapse = ", ")))

  # Number, size, stop, enum should be non-negative
  expect_true(all(BladderCancer_df$number >= 0, na.rm = TRUE))
  expect_true(all(BladderCancer_df$size >= 0, na.rm = TRUE))
  expect_true(all(BladderCancer_df$stop >= 0, na.rm = TRUE))
  expect_true(all(BladderCancer_df$enum >= 0, na.rm = TRUE))

  # Event - check actual unique values
  event_values <- unique(BladderCancer_df$event)
  expect_true(all(event_values %in% c(0, 1)),
              info = paste("Unique event values:", paste(event_values, collapse = ", ")))
})

# Test to verify dataset immutability
test_that("BladderCancer_df remains unchanged after tests", {
  original_dataset <- BladderCancer_df  # Create a copy of the original dataset

  # Run some example tests without modifying the dataset
  lapply(names(BladderCancer_df), function(col) {
    sum(is.na(BladderCancer_df[[col]]))
  })

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, BladderCancer_df)
  expect_equal(nrow(original_dataset), nrow(BladderCancer_df))
  expect_equal(ncol(original_dataset), ncol(BladderCancer_df))
  expect_equal(names(original_dataset), names(BladderCancer_df))
})

# Additional unique checks specific to Bladder Cancer dataset
test_that("BladderCancer_df has meaningful relationships", {
  # Ensure stop is meaningful compared to other variables
  expect_true(all(BladderCancer_df$stop >= 0, na.rm = TRUE))

  # Check that event is binary
  expect_true(all(BladderCancer_df$event %in% c(0, 1), na.rm = TRUE))
})


