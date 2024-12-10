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

# WBreastCancer_tbl_df data set



library(testthat)

# Test dataset structure and class
test_that("WBreastCancer_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(WBreastCancer_tbl_df, "tbl_df")  # Check if it's a tibble
  expect_equal(nrow(WBreastCancer_tbl_df), 1207)  # Check number of rows
  expect_equal(ncol(WBreastCancer_tbl_df), 9)  # Check number of columns
  expect_equal(names(WBreastCancer_tbl_df),
               c("id", "time", "status", "er", "age", "histgrad", "ln_yesno", "pathsd", "pr"))  # Check column names
})

# Test data types of columns
test_that("WBreastCancer_tbl_df has correct column types", {
  expect_true(is.numeric(WBreastCancer_tbl_df$id))  # Check if 'id' is numeric
  expect_true(is.numeric(WBreastCancer_tbl_df$time))  # Check if 'time' is numeric
  expect_true(is.numeric(WBreastCancer_tbl_df$status))  # Check if 'status' is numeric
  expect_true(is.numeric(WBreastCancer_tbl_df$er))  # Check if 'er' is numeric
  expect_true(is.numeric(WBreastCancer_tbl_df$age))  # Check if 'age' is numeric
  expect_true(is.numeric(WBreastCancer_tbl_df$histgrad))  # Check if 'histgrad' is numeric
  expect_true(is.numeric(WBreastCancer_tbl_df$ln_yesno))  # Check if 'ln_yesno' is numeric
  expect_true(is.numeric(WBreastCancer_tbl_df$pathsd))  # Check if 'pathsd' is numeric
  expect_true(is.numeric(WBreastCancer_tbl_df$pr))  # Check if 'pr' is numeric
})

# Test for missing values in critical columns (allow NAs where expected)
test_that("WBreastCancer_tbl_df reports NA values in the columns (as expected)", {
  # Allow NAs for certain columns
  expect_true(sum(is.na(WBreastCancer_tbl_df$er)) > 0, info = "There are NAs in 'er' as expected.")
  expect_true(sum(is.na(WBreastCancer_tbl_df$histgrad)) > 0, info = "There are NAs in 'histgrad' as expected.")
  expect_true(sum(is.na(WBreastCancer_tbl_df$pathsd)) > 0, info = "There are NAs in 'pathsd' as expected.")
  expect_true(sum(is.na(WBreastCancer_tbl_df$pr)) > 0, info = "There are NAs in 'pr' as expected.")

  # Ensure there are no NAs in columns that should not have NAs
  expect_true(all(!is.na(WBreastCancer_tbl_df$id)), info = "'id' should not have any NAs")
  expect_true(all(!is.na(WBreastCancer_tbl_df$time)), info = "'time' should not have any NAs")
  expect_true(all(!is.na(WBreastCancer_tbl_df$status)), info = "'status' should not have any NAs")
  expect_true(all(!is.na(WBreastCancer_tbl_df$age)), info = "'age' should not have any NAs")
  expect_true(all(!is.na(WBreastCancer_tbl_df$ln_yesno)), info = "'ln_yesno' should not have any NAs")
})

# Test for uniqueness in the id column (since it’s likely an identifier)
test_that("WBreastCancer_tbl_df key columns have appropriate uniqueness", {
  expect_equal(length(unique(WBreastCancer_tbl_df$id)), 1207, info = "'id' should have 1207 unique values")
})
