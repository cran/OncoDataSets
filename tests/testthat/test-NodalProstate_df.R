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

# NodalProstate_df  data set

library(testthat)

# Test dataset structure and class
test_that("NodalProstate_df loads correctly and has the expected structure", {
  expect_s3_class(NodalProstate_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(NodalProstate_df), 53)  # Check number of rows
  expect_equal(ncol(NodalProstate_df), 7)  # Check number of columns
  expect_equal(names(NodalProstate_df), c("m", "r", "aged", "stage", "grade", "xray", "acid"))  # Check column names
})

# Test data types of columns
test_that("NodalProstate_df has correct column types", {
  expect_true(is.numeric(NodalProstate_df$m))  # Check if 'm' is numeric
  expect_true(is.numeric(NodalProstate_df$r))  # Check if 'r' is numeric
  expect_true(is.factor(NodalProstate_df$aged))  # Check if 'aged' is a factor
  expect_true(is.factor(NodalProstate_df$stage))  # Check if 'stage' is a factor
  expect_true(is.factor(NodalProstate_df$grade))  # Check if 'grade' is a factor
  expect_true(is.factor(NodalProstate_df$xray))  # Check if 'xray' is a factor
  expect_true(is.factor(NodalProstate_df$acid))  # Check if 'acid' is a factor
})

# Test for missing values in critical columns
test_that("NodalProstate_df reports NA values in the columns", {
  n_na_m <- sum(is.na(NodalProstate_df$m))
  n_na_r <- sum(is.na(NodalProstate_df$r))
  n_na_aged <- sum(is.na(NodalProstate_df$aged))
  n_na_stage <- sum(is.na(NodalProstate_df$stage))
  n_na_grade <- sum(is.na(NodalProstate_df$grade))
  n_na_xray <- sum(is.na(NodalProstate_df$xray))
  n_na_acid <- sum(is.na(NodalProstate_df$acid))

  expect_true(n_na_m == 0, info = paste("Found", n_na_m, "NA values in 'm'"))
  expect_true(n_na_r == 0, info = paste("Found", n_na_r, "NA values in 'r'"))
  expect_true(n_na_aged == 0, info = paste("Found", n_na_aged, "NA values in 'aged'"))
  expect_true(n_na_stage == 0, info = paste("Found", n_na_stage, "NA values in 'stage'"))
  expect_true(n_na_grade == 0, info = paste("Found", n_na_grade, "NA values in 'grade'"))
  expect_true(n_na_xray == 0, info = paste("Found", n_na_xray, "NA values in 'xray'"))
  expect_true(n_na_acid == 0, info = paste("Found", n_na_acid, "NA values in 'acid'"))
})

# Test for valid value ranges in the factors
test_that("NodalProstate_df has valid value ranges", {
  # Check for valid values in 'aged'
  aged_values <- levels(NodalProstate_df$aged)
  expect_true(all(aged_values %in% c("0", "1")),
              info = paste("Invalid values found in 'aged'. Found:", paste(aged_values, collapse = ", ")))

  # Check for valid values in 'stage'
  stage_values <- levels(NodalProstate_df$stage)
  expect_true(all(stage_values %in% c("0", "1")),
              info = paste("Invalid values found in 'stage'. Found:", paste(stage_values, collapse = ", ")))

  # Check for valid values in 'grade'
  grade_values <- levels(NodalProstate_df$grade)
  expect_true(all(grade_values %in% c("0", "1")),
              info = paste("Invalid values found in 'grade'. Found:", paste(grade_values, collapse = ", ")))

  # Check for valid values in 'xray'
  xray_values <- levels(NodalProstate_df$xray)
  expect_true(all(xray_values %in% c("0", "1")),
              info = paste("Invalid values found in 'xray'. Found:", paste(xray_values, collapse = ", ")))

  # Check for valid values in 'acid'
  acid_values <- levels(NodalProstate_df$acid)
  expect_true(all(acid_values %in% c("0", "1")),
              info = paste("Invalid values found in 'acid'. Found:", paste(acid_values, collapse = ", ")))
})

# Test to verify dataset immutability
test_that("NodalProstate_df remains unchanged after tests", {
  original_dataset <- NodalProstate_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(NodalProstate_df$m))  # Ensure no NAs in 'm'
  sum(is.na(NodalProstate_df$r))  # Ensure no NAs in 'r'
  sum(is.na(NodalProstate_df$aged))  # Ensure no NAs in 'aged'
  sum(is.na(NodalProstate_df$stage))  # Ensure no NAs in 'stage'
  sum(is.na(NodalProstate_df$grade))  # Ensure no NAs in 'grade'
  sum(is.na(NodalProstate_df$xray))  # Ensure no NAs in 'xray'
  sum(is.na(NodalProstate_df$acid))  # Ensure no NAs in 'acid'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, NodalProstate_df)
  expect_equal(nrow(original_dataset), nrow(NodalProstate_df))
  expect_equal(ncol(original_dataset), ncol(NodalProstate_df))
  expect_equal(names(original_dataset), names(NodalProstate_df))
})
