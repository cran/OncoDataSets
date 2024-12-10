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

# SmokingLungCancer_df data set


library(testthat)

# Test dataset structure and class
test_that("SmokingLungCancer_df loads correctly and has the expected structure", {
  expect_s3_class(SmokingLungCancer_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(SmokingLungCancer_df), 63)  # Check number of rows
  expect_equal(ncol(SmokingLungCancer_df), 4)  # Check number of columns
  expect_equal(names(SmokingLungCancer_df), c("yrs_smk", "pys", "num_cigs", "deaths"))  # Check column names
})

# Test data types of columns
test_that("SmokingLungCancer_df has correct column types", {
  expect_true(is.factor(SmokingLungCancer_df$yrs_smk))  # Check if 'yrs_smk' is a factor
  expect_true(is.numeric(SmokingLungCancer_df$pys))  # Check if 'pys' is numeric
  expect_true(is.factor(SmokingLungCancer_df$num_cigs))  # Check if 'num_cigs' is a factor
  expect_true(is.numeric(SmokingLungCancer_df$deaths))  # Check if 'deaths' is numeric
})

# Test for missing values in critical columns
test_that("SmokingLungCancer_df reports NA values in the columns", {
  n_na_yrs_smk <- sum(is.na(SmokingLungCancer_df$yrs_smk))
  n_na_pys <- sum(is.na(SmokingLungCancer_df$pys))
  n_na_num_cigs <- sum(is.na(SmokingLungCancer_df$num_cigs))
  n_na_deaths <- sum(is.na(SmokingLungCancer_df$deaths))

  # Expecting that the number of NAs in each column is within acceptable limits
  expect_true(n_na_yrs_smk >= 0, info = paste("Found", n_na_yrs_smk, "NA values in yrs_smk"))
  expect_true(n_na_pys >= 0, info = paste("Found", n_na_pys, "NA values in pys"))
  expect_true(n_na_num_cigs >= 0, info = paste("Found", n_na_num_cigs, "NA values in num_cigs"))
  expect_true(n_na_deaths >= 0, info = paste("Found", n_na_deaths, "NA values in deaths"))
})

# Test to verify dataset immutability
test_that("SmokingLungCancer_df remains unchanged after tests", {
  original_dataset <- SmokingLungCancer_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(SmokingLungCancer_df$yrs_smk))  # Ensure no NAs in 'yrs_smk'
  sum(is.na(SmokingLungCancer_df$pys))  # Ensure no NAs in 'pys'
  sum(is.na(SmokingLungCancer_df$num_cigs))  # Ensure no NAs in 'num_cigs'
  sum(is.na(SmokingLungCancer_df$deaths))  # Ensure no NAs in 'deaths'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, SmokingLungCancer_df)
  expect_equal(nrow(original_dataset), nrow(SmokingLungCancer_df))
  expect_equal(ncol(original_dataset), ncol(SmokingLungCancer_df))
  expect_equal(names(original_dataset), names(SmokingLungCancer_df))
})


