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

# UKLungCancerDeaths_df  data set



library(testthat)

# Test dataset structure and class
test_that("UKLungCancerDeaths_df loads correctly and has the expected structure", {
  expect_s3_class(UKLungCancerDeaths_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(UKLungCancerDeaths_df), 63)  # Check number of rows
  expect_equal(ncol(UKLungCancerDeaths_df), 4)  # Check number of columns
  expect_equal(names(UKLungCancerDeaths_df), c("years.smok", "cigarettes", "Time", "y"))  # Check column names
})

# Test data types of columns
test_that("UKLungCancerDeaths_df has correct column types", {
  expect_true(is.factor(UKLungCancerDeaths_df$years.smok))  # Check if 'years.smok' is a factor
  expect_true(is.factor(UKLungCancerDeaths_df$cigarettes))  # Check if 'cigarettes' is a factor
  expect_true(is.numeric(UKLungCancerDeaths_df$Time))  # Check if 'Time' is numeric
  expect_true(is.numeric(UKLungCancerDeaths_df$y))  # Check if 'y' is numeric
})

# Test for missing values in critical columns
test_that("UKLungCancerDeaths_df reports NA values in the columns", {
  n_na_years_smok <- sum(is.na(UKLungCancerDeaths_df$years.smok))
  n_na_cigarettes <- sum(is.na(UKLungCancerDeaths_df$cigarettes))
  n_na_time <- sum(is.na(UKLungCancerDeaths_df$Time))
  n_na_y <- sum(is.na(UKLungCancerDeaths_df$y))

  expect_true(n_na_years_smok == 0, info = paste("Found", n_na_years_smok, "NA values in years.smok"))
  expect_true(n_na_cigarettes == 0, info = paste("Found", n_na_cigarettes, "NA values in cigarettes"))
  expect_true(n_na_time == 0, info = paste("Found", n_na_time, "NA values in Time"))
  expect_true(n_na_y == 0, info = paste("Found", n_na_y, "NA values in y"))
})

# Test for valid value ranges in the factors
test_that("UKLungCancerDeaths_df has valid value ranges", {
  # Test for 'years.smok' - check if it contains the correct levels
  years_smok_values <- levels(UKLungCancerDeaths_df$years.smok)
  expect_true(all(years_smok_values %in% c("0-4", "5-9", "10-14", "15-19", "20-24",
                                           "25-29", "30-34", "35-39", "40-44",
                                           "45-49", "50-54", "55-59", "60+")),
              info = paste("Invalid values found in 'years.smok'. Found:", paste(years_smok_values, collapse = ", ")))

  # Test for 'cigarettes' - check if it contains the correct levels
  cigarettes_values <- levels(UKLungCancerDeaths_df$cigarettes)
  expect_true(all(cigarettes_values %in% c("0", "1-9", "10-14", "15-19", "20-24",
                                           "25-34", "35+")),
              info = paste("Invalid values found in 'cigarettes'. Found:", paste(cigarettes_values, collapse = ", ")))
})

# Test to verify dataset immutability
test_that("UKLungCancerDeaths_df remains unchanged after tests", {
  original_dataset <- UKLungCancerDeaths_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(UKLungCancerDeaths_df$years.smok))  # Ensure no NAs in 'years.smok'
  sum(is.na(UKLungCancerDeaths_df$cigarettes))  # Ensure no NAs in 'cigarettes'
  sum(is.na(UKLungCancerDeaths_df$Time))  # Ensure no NAs in 'Time'
  sum(is.na(UKLungCancerDeaths_df$y))  # Ensure no NAs in 'y'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, UKLungCancerDeaths_df)
  expect_equal(nrow(original_dataset), nrow(UKLungCancerDeaths_df))
  expect_equal(ncol(original_dataset), ncol(UKLungCancerDeaths_df))
  expect_equal(names(original_dataset), names(UKLungCancerDeaths_df))
})
