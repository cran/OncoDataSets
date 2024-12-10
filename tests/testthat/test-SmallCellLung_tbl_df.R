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

# SmallCellLung_tbl_df data set

library(testthat)

# Test dataset structure and class
test_that("SmallCellLung_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(SmallCellLung_tbl_df, "tbl_df")  # Check if it's a tibble
  expect_equal(nrow(SmallCellLung_tbl_df), 121)  # Check number of rows
  expect_equal(ncol(SmallCellLung_tbl_df), 3)  # Check number of columns
  expect_equal(names(SmallCellLung_tbl_df), c("treatment", "age", "survival"))  # Check column names
})

# Test data types of columns
test_that("SmallCellLung_tbl_df has correct column types", {
  expect_true(is.factor(SmallCellLung_tbl_df$treatment))  # Check if 'treatment' is a factor
  expect_true(is.integer(SmallCellLung_tbl_df$age))  # Check if 'age' is integer
  expect_true(is.integer(SmallCellLung_tbl_df$survival))  # Check if 'survival' is integer
})

# Test for missing values in critical columns
test_that("SmallCellLung_tbl_df reports NA values in the columns", {
  n_na_treatment <- sum(is.na(SmallCellLung_tbl_df$treatment))
  n_na_age <- sum(is.na(SmallCellLung_tbl_df$age))
  n_na_survival <- sum(is.na(SmallCellLung_tbl_df$survival))

  expect_true(n_na_treatment == 0, info = paste("Found", n_na_treatment, "NA values in treatment"))
  expect_true(n_na_age == 0, info = paste("Found", n_na_age, "NA values in age"))
  expect_true(n_na_survival == 0, info = paste("Found", n_na_survival, "NA values in survival"))
})

# Test for unique values in key columns (adjusted for 'treatment')
test_that("SmallCellLung_tbl_df key columns have appropriate uniqueness", {
  expect_equal(length(unique(SmallCellLung_tbl_df$treatment)), 2, info = "'treatment' should have 2 unique values")
})
