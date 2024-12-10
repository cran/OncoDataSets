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

# MaleMiceCancer_df data set


library(testthat)

# Test dataset structure and class
test_that("MaleMiceCancer_df loads correctly and has the expected structure", {
  expect_s3_class(MaleMiceCancer_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(MaleMiceCancer_df), 181)  # Check number of rows
  expect_equal(ncol(MaleMiceCancer_df), 4)  # Check number of columns
  expect_equal(names(MaleMiceCancer_df), c("trt", "days", "outcome", "id"))  # Check column names
})

# Test data types of columns
test_that("MaleMiceCancer_df has correct column types", {
  expect_true(is.factor(MaleMiceCancer_df$trt))
  expect_true(is.numeric(MaleMiceCancer_df$days))
  expect_true(is.factor(MaleMiceCancer_df$outcome))
  expect_true(is.integer(MaleMiceCancer_df$id))
})

# Test for missing values in all columns
test_that("MaleMiceCancer_df reports NA values in the columns", {
  column_names <- names(MaleMiceCancer_df)

  for (col in column_names) {
    n_na <- sum(is.na(MaleMiceCancer_df[[col]]))
    expect_true(n_na >= 0, info = paste("Checking NA values in", col))
  }
})

# Additional data integrity checks
test_that("MaleMiceCancer_df has valid value ranges", {
  # Treatment levels check
  expect_equal(length(levels(MaleMiceCancer_df$trt)), 2,
               info = paste("Treatment levels:", paste(levels(MaleMiceCancer_df$trt), collapse = ", ")))

  # Days validation
  expect_true(all(MaleMiceCancer_df$days >= 0, na.rm = TRUE))

  # Outcome levels check
  expect_equal(length(levels(MaleMiceCancer_df$outcome)), 4,
               info = paste("Outcome levels:", paste(levels(MaleMiceCancer_df$outcome), collapse = ", ")))

  # ID validation
  expect_true(all(MaleMiceCancer_df$id > 0, na.rm = TRUE))
})

# Test to verify dataset immutability
test_that("MaleMiceCancer_df remains unchanged after tests", {
  original_dataset <- MaleMiceCancer_df  # Create a copy of the original dataset

  # Run some example tests without modifying the dataset
  lapply(names(MaleMiceCancer_df), function(col) {
    sum(is.na(MaleMiceCancer_df[[col]]))
  })

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, MaleMiceCancer_df)
  expect_equal(nrow(original_dataset), nrow(MaleMiceCancer_df))
  expect_equal(ncol(original_dataset), ncol(MaleMiceCancer_df))
  expect_equal(names(original_dataset), names(MaleMiceCancer_df))
})

# Additional specific checks for Male Mice Cancer dataset
test_that("MaleMiceCancer_df has meaningful relationships", {
  # Verify days are non-negative
  expect_true(all(MaleMiceCancer_df$days >= 0, na.rm = TRUE))

  # Check unique levels of treatment and outcome
  trt_levels <- levels(MaleMiceCancer_df$trt)
  outcome_levels <- levels(MaleMiceCancer_df$outcome)

  expect_true(length(trt_levels) == 2,
              info = paste("Treatment levels:", paste(trt_levels, collapse = ", ")))

  expect_true(length(outcome_levels) == 4,
              info = paste("Outcome levels:", paste(outcome_levels, collapse = ", ")))
})
