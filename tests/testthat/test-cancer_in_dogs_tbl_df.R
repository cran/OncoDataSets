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

# cancer_in_dogs_tbl_df data set

library(testthat)

# Test structure and class of cancer_in_dogs_tbl_df
test_that("cancer_in_dogs_tbl_df has the expected structure and class", {
  expect_s3_class(cancer_in_dogs_tbl_df, "tbl_df")  # Verify it is a tibble
  expect_equal(class(cancer_in_dogs_tbl_df), c("tbl_df", "tbl", "data.frame"))
  expect_equal(length(cancer_in_dogs_tbl_df), 2)  # It should have 2 columns
  expect_equal(names(cancer_in_dogs_tbl_df), c("order", "response"))
})

# Test that 'order' and 'response' columns are of type integer
test_that("cancer_in_dogs_tbl_df columns have the correct types", {
  expect_type(cancer_in_dogs_tbl_df$order, "integer")  # 'order' should be an integer
  expect_type(cancer_in_dogs_tbl_df$response, "integer")  # 'response' should be an integer
})

# Test for valid factor levels in 'order' and 'response' columns
test_that("cancer_in_dogs_tbl_df columns have valid factor levels", {
  expect_equal(levels(factor(cancer_in_dogs_tbl_df$order)), c("2,4-D", "no 2,4-D"))
  expect_equal(levels(factor(cancer_in_dogs_tbl_df$response)), c("cancer", "no cancer"))
})

# Test for missing values
test_that("cancer_in_dogs_tbl_df has no missing values", {
  expect_true(all(!is.na(cancer_in_dogs_tbl_df$order)), info = "'order' column should not have missing values")
  expect_true(all(!is.na(cancer_in_dogs_tbl_df$response)), info = "'response' column should not have missing values")
})

# Test dataset immutability
test_that("cancer_in_dogs_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- cancer_in_dogs_tbl_df

  # Perform some example checks
  expect_true(all(!is.na(cancer_in_dogs_tbl_df$order)))
  expect_true(all(!is.na(cancer_in_dogs_tbl_df$response)))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, cancer_in_dogs_tbl_df)
  expect_equal(names(original_dataset), names(cancer_in_dogs_tbl_df))
  expect_equal(length(original_dataset), length(cancer_in_dogs_tbl_df))
})
