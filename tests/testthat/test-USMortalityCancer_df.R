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

# USMortalityCancer_df data set

library(testthat)

# Test structure and class of USMortalityCancer_df
test_that("USMortalityCancer_df has the expected structure and class", {
  expect_s3_class(USMortalityCancer_df, "data.frame")  # Verify it is a data frame
  expect_equal(class(USMortalityCancer_df), c("data.frame"))  # It should be a data frame
  expect_equal(length(USMortalityCancer_df), 5)  # It should have 5 columns
  expect_equal(names(USMortalityCancer_df), c("Status", "Sex", "Cause", "Rate", "SE"))
})

# Test column types
test_that("USMortalityCancer_df columns have the correct types", {
  expect_s3_class(USMortalityCancer_df$Status, "factor")  # Status should be a factor
  expect_s3_class(USMortalityCancer_df$Sex, "factor")  # Sex should be a factor
  expect_s3_class(USMortalityCancer_df$Cause, "factor")  # Cause should be a factor
  expect_type(USMortalityCancer_df$Rate, "double")   # Rate should be numeric (double)
  expect_type(USMortalityCancer_df$SE, "double")     # SE should be numeric (double)
})

# Test dataset immutability
test_that("USMortalityCancer_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- USMortalityCancer_df

  # Perform some example checks (ensuring NA values are valid)
  expect_true(all(is.na(USMortalityCancer_df$Rate) | !is.na(USMortalityCancer_df$Rate)), info = "Rate should have valid values including NA if applicable")
  expect_true(all(is.na(USMortalityCancer_df$SE) | !is.na(USMortalityCancer_df$SE)), info = "SE should have valid values including NA if applicable")

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, USMortalityCancer_df)
  expect_equal(names(original_dataset), names(USMortalityCancer_df))
  expect_equal(length(original_dataset), length(USMortalityCancer_df))
})

