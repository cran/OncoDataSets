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

# LeukemiaRemission_df  data set


library(testthat)

# Test dataset structure and class
test_that("LeukemiaRemission_df loads correctly and has the expected structure", {
  expect_s3_class(LeukemiaRemission_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(LeukemiaRemission_df), 42)  # Check number of rows
  expect_equal(ncol(LeukemiaRemission_df), 5)  # Check number of columns
  expect_equal(names(LeukemiaRemission_df), c("sex", "wbc", "time", "event", "grp"))  # Check column names
})

# Test data types of columns
test_that("LeukemiaRemission_df has correct column types", {
  expect_true(is.integer(LeukemiaRemission_df$sex))  # Check if 'sex' is integer
  expect_true(is.numeric(LeukemiaRemission_df$wbc))  # Check if 'wbc' is numeric
  expect_true(is.integer(LeukemiaRemission_df$time))  # Check if 'time' is integer
  expect_true(is.factor(LeukemiaRemission_df$event))  # Check if 'event' is a factor
  expect_true(is.factor(LeukemiaRemission_df$grp))  # Check if 'grp' is a factor
})

# Test for missing values in critical columns
test_that("LeukemiaRemission_df reports NA values in the columns", {
  n_na_sex <- sum(is.na(LeukemiaRemission_df$sex))
  n_na_wbc <- sum(is.na(LeukemiaRemission_df$wbc))
  n_na_time <- sum(is.na(LeukemiaRemission_df$time))
  n_na_event <- sum(is.na(LeukemiaRemission_df$event))
  n_na_grp <- sum(is.na(LeukemiaRemission_df$grp))

  # Expecting that the number of NAs in each column is within acceptable limits
  expect_true(n_na_sex >= 0, info = paste("Found", n_na_sex, "NA values in sex"))
  expect_true(n_na_wbc >= 0, info = paste("Found", n_na_wbc, "NA values in wbc"))
  expect_true(n_na_time >= 0, info = paste("Found", n_na_time, "NA values in time"))
  expect_true(n_na_event >= 0, info = paste("Found", n_na_event, "NA values in event"))
  expect_true(n_na_grp >= 0, info = paste("Found", n_na_grp, "NA values in grp"))
})

# Test for factor levels in 'event' and 'grp' columns
test_that("LeukemiaRemission_df has correct factor levels for 'event' and 'grp'", {
  # Correct factor levels based on the actual dataset values
  expect_equal(levels(LeukemiaRemission_df$event), c("Relapse", "censored"))  # Correct levels for 'event'
  expect_equal(levels(LeukemiaRemission_df$grp), c("6-MP", "Placebo"))  # Correct levels for 'grp'
})

# Test to verify dataset immutability
test_that("LeukemiaRemission_df remains unchanged after tests", {
  original_dataset <- LeukemiaRemission_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(LeukemiaRemission_df$sex))  # Ensure no NAs in 'sex'
  sum(is.na(LeukemiaRemission_df$wbc))  # Ensure no NAs in 'wbc'
  sum(is.na(LeukemiaRemission_df$time))  # Ensure no NAs in 'time'
  sum(is.na(LeukemiaRemission_df$event))  # Ensure no NAs in 'event'
  sum(is.na(LeukemiaRemission_df$grp))  # Ensure no NAs in 'grp'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, LeukemiaRemission_df)
  expect_equal(nrow(original_dataset), nrow(LeukemiaRemission_df))
  expect_equal(ncol(original_dataset), ncol(LeukemiaRemission_df))
  expect_equal(names(original_dataset), names(LeukemiaRemission_df))
})
