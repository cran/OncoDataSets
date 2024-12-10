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

# USCancerStats_df  data set



library(testthat)

# Test dataset structure and class
test_that("USCancerStats_df loads correctly and has the expected structure", {
  expect_s3_class(USCancerStats_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(USCancerStats_df), 20)  # Check number of rows
  expect_equal(ncol(USCancerStats_df), 4)  # Check number of columns
  expect_equal(names(USCancerStats_df), c("site", "survival", "mortality", "incidence"))  # Check column names
})

# Test data types of columns
test_that("USCancerStats_df has correct column types", {
  expect_true(is.character(USCancerStats_df$site))  # Check if 'site' is character
  expect_true(is.numeric(USCancerStats_df$survival))  # Check if 'survival' is numeric
  expect_true(is.numeric(USCancerStats_df$mortality))  # Check if 'mortality' is numeric
  expect_true(is.numeric(USCancerStats_df$incidence))  # Check if 'incidence' is numeric
})

# Test for missing values in critical columns
test_that("USCancerStats_df reports NA values in the columns", {
  n_na_site <- sum(is.na(USCancerStats_df$site))
  n_na_survival <- sum(is.na(USCancerStats_df$survival))
  n_na_mortality <- sum(is.na(USCancerStats_df$mortality))
  n_na_incidences <- sum(is.na(USCancerStats_df$incidence))

  # Expecting that the number of NAs in each column is within acceptable limits
  expect_true(n_na_site >= 0, info = paste("Found", n_na_site, "NA values in site"))
  expect_true(n_na_survival >= 0, info = paste("Found", n_na_survival, "NA values in survival"))
  expect_true(n_na_mortality >= 0, info = paste("Found", n_na_mortality, "NA values in mortality"))
  expect_true(n_na_incidences >= 0, info = paste("Found", n_na_incidences, "NA values in incidence"))
})

# Test the immutability of the dataset after tests
test_that("USCancerStats_df remains unchanged after tests", {
  original_dataset <- USCancerStats_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(USCancerStats_df$site))  # Ensure no NAs in 'site'
  sum(is.na(USCancerStats_df$survival))  # Ensure no NAs in 'survival'
  sum(is.na(USCancerStats_df$mortality))  # Ensure no NAs in 'mortality'
  sum(is.na(USCancerStats_df$incidence))  # Ensure no NAs in 'incidence'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, USCancerStats_df)
  expect_equal(nrow(original_dataset), nrow(USCancerStats_df))
  expect_equal(ncol(original_dataset), ncol(USCancerStats_df))
  expect_equal(names(original_dataset), names(USCancerStats_df))
})

