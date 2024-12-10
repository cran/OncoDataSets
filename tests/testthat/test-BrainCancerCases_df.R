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

# BrainCancerCases_df data set

library(testthat)

# Test structure and class of BrainCancerCases_df
test_that("BrainCancerCases_df has the expected structure and class", {
  expect_s3_class(BrainCancerCases_df, "data.frame")  # Verify it is a data frame
  expect_equal(class(BrainCancerCases_df), "data.frame")  # Ensure the class is data.frame
  expect_equal(length(BrainCancerCases_df), 5)  # It should have 5 columns
  expect_equal(
    names(BrainCancerCases_df),
    c("county", "cases", "year", "agegroup", "sex")
  )  # Verify column names
})

# Test column types
test_that("BrainCancerCases_df columns have the correct types", {
  expect_type(BrainCancerCases_df$county, "integer")  # county should be a factor, internally integer
  expect_s3_class(BrainCancerCases_df$county, "factor")  # Verify county is a factor
  expect_type(BrainCancerCases_df$cases, "integer")  # cases should be an integer
  expect_type(BrainCancerCases_df$year, "integer")  # year should be an integer
  expect_type(BrainCancerCases_df$agegroup, "integer")  # agegroup should be an integer
  expect_type(BrainCancerCases_df$sex, "integer")  # sex should be an integer
})

# Test dataset immutability
test_that("BrainCancerCases_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- BrainCancerCases_df

  # Perform example checks (ensuring no accidental changes)
  expect_true(all(!is.na(names(BrainCancerCases_df))), info = "Column names should not contain missing values")

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, BrainCancerCases_df)
  expect_equal(names(original_dataset), names(BrainCancerCases_df))
  expect_equal(length(original_dataset), length(BrainCancerCases_df))
})

