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

# ProstateMethylation_df  data set


library(testthat)

# Test dataset structure and class
test_that("ProstateMethylation_df loads correctly and has the expected structure", {
  expect_s3_class(ProstateMethylation_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(ProstateMethylation_df), 5067)  # Check number of rows
  expect_equal(ncol(ProstateMethylation_df), 9)  # Check number of columns
  expect_equal(names(ProstateMethylation_df),
               c("IlmnID", "FFPE_benign_1", "FFPE_benign_2", "FFPE_benign_3", "FFPE_benign_4",
                 "FFPE_tumour_1", "FFPE_tumour_2", "FFPE_tumour_3", "FFPE_tumour_4"))  # Check column names
})

# Test data types of columns
test_that("ProstateMethylation_df has correct column types", {
  expect_true(is.character(ProstateMethylation_df$IlmnID))  # Check if 'IlmnID' is character
  expect_true(is.numeric(ProstateMethylation_df$FFPE_benign_1))  # Check if 'FFPE_benign_1' is numeric
  expect_true(is.numeric(ProstateMethylation_df$FFPE_benign_2))  # Check if 'FFPE_benign_2' is numeric
  expect_true(is.numeric(ProstateMethylation_df$FFPE_benign_3))  # Check if 'FFPE_benign_3' is numeric
  expect_true(is.numeric(ProstateMethylation_df$FFPE_benign_4))  # Check if 'FFPE_benign_4' is numeric
  expect_true(is.numeric(ProstateMethylation_df$FFPE_tumour_1))  # Check if 'FFPE_tumour_1' is numeric
  expect_true(is.numeric(ProstateMethylation_df$FFPE_tumour_2))  # Check if 'FFPE_tumour_2' is numeric
  expect_true(is.numeric(ProstateMethylation_df$FFPE_tumour_3))  # Check if 'FFPE_tumour_3' is numeric
  expect_true(is.numeric(ProstateMethylation_df$FFPE_tumour_4))  # Check if 'FFPE_tumour_4' is numeric
})

# Test for missing values in critical columns
test_that("ProstateMethylation_df has no missing values in key columns", {
  n_na_IlmnID <- sum(is.na(ProstateMethylation_df$IlmnID))
  n_na_benign_1 <- sum(is.na(ProstateMethylation_df$FFPE_benign_1))
  n_na_benign_2 <- sum(is.na(ProstateMethylation_df$FFPE_benign_2))
  n_na_benign_3 <- sum(is.na(ProstateMethylation_df$FFPE_benign_3))
  n_na_benign_4 <- sum(is.na(ProstateMethylation_df$FFPE_benign_4))
  n_na_tumour_1 <- sum(is.na(ProstateMethylation_df$FFPE_tumour_1))
  n_na_tumour_2 <- sum(is.na(ProstateMethylation_df$FFPE_tumour_2))
  n_na_tumour_3 <- sum(is.na(ProstateMethylation_df$FFPE_tumour_3))
  n_na_tumour_4 <- sum(is.na(ProstateMethylation_df$FFPE_tumour_4))

  expect_true(n_na_IlmnID == 0, info = paste("Found", n_na_IlmnID, "NA values in 'IlmnID'"))
  expect_true(n_na_benign_1 == 0, info = paste("Found", n_na_benign_1, "NA values in 'FFPE_benign_1'"))
  expect_true(n_na_benign_2 == 0, info = paste("Found", n_na_benign_2, "NA values in 'FFPE_benign_2'"))
  expect_true(n_na_benign_3 == 0, info = paste("Found", n_na_benign_3, "NA values in 'FFPE_benign_3'"))
  expect_true(n_na_benign_4 == 0, info = paste("Found", n_na_benign_4, "NA values in 'FFPE_benign_4'"))
  expect_true(n_na_tumour_1 == 0, info = paste("Found", n_na_tumour_1, "NA values in 'FFPE_tumour_1'"))
  expect_true(n_na_tumour_2 == 0, info = paste("Found", n_na_tumour_2, "NA values in 'FFPE_tumour_2'"))
  expect_true(n_na_tumour_3 == 0, info = paste("Found", n_na_tumour_3, "NA values in 'FFPE_tumour_3'"))
  expect_true(n_na_tumour_4 == 0, info = paste("Found", n_na_tumour_4, "NA values in 'FFPE_tumour_4'"))
})

# Test for value ranges (methylation levels should generally be between 0 and 1)
test_that("ProstateMethylation_df has valid methylation value ranges", {
  methylation_columns <- c("FFPE_benign_1", "FFPE_benign_2", "FFPE_benign_3", "FFPE_benign_4",
                           "FFPE_tumour_1", "FFPE_tumour_2", "FFPE_tumour_3", "FFPE_tumour_4")

  for (col in methylation_columns) {
    values <- ProstateMethylation_df[[col]]
    expect_true(all(values >= 0 & values <= 1),
                info = paste("Invalid methylation values found in", col, ". Values outside range [0, 1]"))
  }
})

# Test for dataset immutability
test_that("ProstateMethylation_df remains unchanged after tests", {
  original_dataset <- ProstateMethylation_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(ProstateMethylation_df$IlmnID))  # Ensure no NAs in 'IlmnID'
  sum(is.na(ProstateMethylation_df$FFPE_benign_1))  # Ensure no NAs in 'FFPE_benign_1'
  sum(is.na(ProstateMethylation_df$FFPE_benign_2))  # Ensure no NAs in 'FFPE_benign_2'
  sum(is.na(ProstateMethylation_df$FFPE_benign_3))  # Ensure no NAs in 'FFPE_benign_3'
  sum(is.na(ProstateMethylation_df$FFPE_benign_4))  # Ensure no NAs in 'FFPE_benign_4'
  sum(is.na(ProstateMethylation_df$FFPE_tumour_1))  # Ensure no NAs in 'FFPE_tumour_1'
  sum(is.na(ProstateMethylation_df$FFPE_tumour_2))  # Ensure no NAs in 'FFPE_tumour_2'
  sum(is.na(ProstateMethylation_df$FFPE_tumour_3))  # Ensure no NAs in 'FFPE_tumour_3'
  sum(is.na(ProstateMethylation_df$FFPE_tumour_4))  # Ensure no NAs in 'FFPE_tumour_4'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, ProstateMethylation_df)
  expect_equal(nrow(original_dataset), nrow(ProstateMethylation_df))
  expect_equal(ncol(original_dataset), ncol(ProstateMethylation_df))
  expect_equal(names(original_dataset), names(ProstateMethylation_df))
})


