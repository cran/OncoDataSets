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

# Melanoma_df data set

library(testthat)

# Test structure and class of Melanoma_df
test_that("Melanoma_df has the expected structure and class", {
  expect_s3_class(Melanoma_df, "data.frame")  # Verify it is a data.frame
  expect_equal(class(Melanoma_df), "data.frame")  # Confirm class is data.frame
  expect_equal(length(Melanoma_df), 7)  # It should have 7 columns
  expect_equal(names(Melanoma_df), c("time", "status", "sex", "age", "year", "thickness", "ulcer"))
})

# Test column types
test_that("Melanoma_df columns have the correct types", {
  expect_type(Melanoma_df$time, "integer")  # 'time' should be an integer
  expect_type(Melanoma_df$status, "integer")  # 'status' should be an integer
  expect_type(Melanoma_df$sex, "integer")  # 'sex' should be an integer
  expect_type(Melanoma_df$age, "integer")  # 'age' should be an integer
  expect_type(Melanoma_df$year, "integer")  # 'year' should be an integer
  expect_type(Melanoma_df$thickness, "double")  # 'thickness' should be numeric (double)
  expect_type(Melanoma_df$ulcer, "integer")  # 'ulcer' should be an integer
})

# Test for missing values in columns
test_that("Melanoma_df has no missing values in any column", {
  expect_true(all(!is.na(Melanoma_df$time)), info = "'time' column should not have missing values")
  expect_true(all(!is.na(Melanoma_df$status)), info = "'status' column should not have missing values")
  expect_true(all(!is.na(Melanoma_df$sex)), info = "'sex' column should not have missing values")
  expect_true(all(!is.na(Melanoma_df$age)), info = "'age' column should not have missing values")
  expect_true(all(!is.na(Melanoma_df$year)), info = "'year' column should not have missing values")
  expect_true(all(!is.na(Melanoma_df$thickness)), info = "'thickness' column should not have missing values")
  expect_true(all(!is.na(Melanoma_df$ulcer)), info = "'ulcer' column should not have missing values")
})

# Test dataset immutability
test_that("Melanoma_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Melanoma_df

  # Perform some example checks
  expect_true(all(!is.na(Melanoma_df$time)))
  expect_true(all(!is.na(Melanoma_df$status)))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Melanoma_df)
  expect_equal(names(original_dataset), names(Melanoma_df))
  expect_equal(length(original_dataset), length(Melanoma_df))
})

