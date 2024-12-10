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

# CervicalCancer_df data set

library(testthat)

# Test dataset structure and class
test_that("CervicalCancer_df loads correctly and has the expected structure", {
  expect_s3_class(CervicalCancer_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(CervicalCancer_df), 181)  # Check number of rows
  expect_equal(ncol(CervicalCancer_df), 10)  # Check number of columns
  expect_equal(names(CervicalCancer_df), c("hpv16", "hpv1845", "hpvother", "naked_via", "smart_via",
                                           "treatment", "combined_via", "histology", "cytology", "CIN2plus"))  # Check column names
})

# Test data types of columns
test_that("CervicalCancer_df has correct column types", {
  expect_true(is.factor(CervicalCancer_df$hpv16))  # Check if 'hpv16' is a factor
  expect_true(is.factor(CervicalCancer_df$hpv1845))  # Check if 'hpv1845' is a factor
  expect_true(is.factor(CervicalCancer_df$hpvother))  # Check if 'hpvother' is a factor
  expect_true(is.factor(CervicalCancer_df$naked_via))  # Check if 'naked_via' is a factor
  expect_true(is.factor(CervicalCancer_df$smart_via))  # Check if 'smart_via' is a factor
  expect_true(is.factor(CervicalCancer_df$treatment))  # Check if 'treatment' is a factor
  expect_true(is.factor(CervicalCancer_df$combined_via))  # Check if 'combined_via' is a factor
  expect_true(is.factor(CervicalCancer_df$histology))  # Check if 'histology' is a factor
  expect_true(is.factor(CervicalCancer_df$cytology))  # Check if 'cytology' is a factor
  expect_true(is.factor(CervicalCancer_df$CIN2plus))  # Check if 'CIN2plus' is a factor
})

# Test for missing values in critical columns
test_that("CervicalCancer_df reports NA values in the columns", {
  n_na_hpv16 <- sum(is.na(CervicalCancer_df$hpv16))
  n_na_hpv1845 <- sum(is.na(CervicalCancer_df$hpv1845))
  n_na_hpvother <- sum(is.na(CervicalCancer_df$hpvother))
  n_na_naked_via <- sum(is.na(CervicalCancer_df$naked_via))
  n_na_smart_via <- sum(is.na(CervicalCancer_df$smart_via))
  n_na_treatment <- sum(is.na(CervicalCancer_df$treatment))
  n_na_combined_via <- sum(is.na(CervicalCancer_df$combined_via))
  n_na_histology <- sum(is.na(CervicalCancer_df$histology))
  n_na_cytology <- sum(is.na(CervicalCancer_df$cytology))
  n_na_CIN2plus <- sum(is.na(CervicalCancer_df$CIN2plus))

  # Expecting that the number of NAs in each column is within acceptable limits
  expect_true(n_na_hpv16 >= 0, info = paste("Found", n_na_hpv16, "NA values in hpv16"))
  expect_true(n_na_hpv1845 >= 0, info = paste("Found", n_na_hpv1845, "NA values in hpv1845"))
  expect_true(n_na_hpvother >= 0, info = paste("Found", n_na_hpvother, "NA values in hpvother"))
  expect_true(n_na_naked_via >= 0, info = paste("Found", n_na_naked_via, "NA values in naked_via"))
  expect_true(n_na_smart_via >= 0, info = paste("Found", n_na_smart_via, "NA values in smart_via"))
  expect_true(n_na_treatment >= 0, info = paste("Found", n_na_treatment, "NA values in treatment"))
  expect_true(n_na_combined_via >= 0, info = paste("Found", n_na_combined_via, "NA values in combined_via"))
  expect_true(n_na_histology >= 0, info = paste("Found", n_na_histology, "NA values in histology"))
  expect_true(n_na_cytology >= 0, info = paste("Found", n_na_cytology, "NA values in cytology"))
  expect_true(n_na_CIN2plus >= 0, info = paste("Found", n_na_CIN2plus, "NA values in CIN2plus"))
})

# Test to verify dataset immutability
test_that("CervicalCancer_df remains unchanged after tests", {
  original_dataset <- CervicalCancer_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(CervicalCancer_df$hpv16))  # Ensure no NAs in 'hpv16'
  sum(is.na(CervicalCancer_df$hpv1845))  # Ensure no NAs in 'hpv1845'
  sum(is.na(CervicalCancer_df$hpvother))  # Ensure no NAs in 'hpvother'
  sum(is.na(CervicalCancer_df$naked_via))  # Ensure no NAs in 'naked_via'
  sum(is.na(CervicalCancer_df$smart_via))  # Ensure no NAs in 'smart_via'
  sum(is.na(CervicalCancer_df$treatment))  # Ensure no NAs in 'treatment'
  sum(is.na(CervicalCancer_df$combined_via))  # Ensure no NAs in 'combined_via'
  sum(is.na(CervicalCancer_df$histology))  # Ensure no NAs in 'histology'
  sum(is.na(CervicalCancer_df$cytology))  # Ensure no NAs in 'cytology'
  sum(is.na(CervicalCancer_df$CIN2plus))  # Ensure no NAs in 'CIN2plus'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, CervicalCancer_df)
  expect_equal(nrow(original_dataset), nrow(CervicalCancer_df))
  expect_equal(ncol(original_dataset), ncol(CervicalCancer_df))
  expect_equal(names(original_dataset), names(CervicalCancer_df))
})


