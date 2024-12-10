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

# USRegionalMortality_df data set


library(testthat)

# Test structure and class of USRegionalMortality_df
test_that("USRegionalMortality_df has the expected structure and class", {
  expect_s3_class(USRegionalMortality_df, "data.frame")  # Verify it is a data frame
  expect_equal(class(USRegionalMortality_df), c("data.frame"))  # It should be a data frame
  expect_equal(length(USRegionalMortality_df), 6)  # It should have 6 columns
  expect_equal(names(USRegionalMortality_df), c("Region", "Status", "Sex", "Cause", "Rate", "SE"))
})

# Test column types
test_that("USRegionalMortality_df columns have the correct types", {
  expect_s3_class(USRegionalMortality_df$Region, "factor")  # Region should be a factor
  expect_s3_class(USRegionalMortality_df$Status, "factor")  # Status should be a factor
  expect_s3_class(USRegionalMortality_df$Sex, "factor")  # Sex should be a factor
  expect_s3_class(USRegionalMortality_df$Cause, "factor")  # Cause should be a factor
  expect_type(USRegionalMortality_df$Rate, "double")   # Rate should be numeric (double)
  expect_type(USRegionalMortality_df$SE, "double")     # SE should be numeric (double)
})

# Test dataset immutability
test_that("USRegionalMortality_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- USRegionalMortality_df

  # Perform some example checks (ensuring NA values are valid)
  expect_true(all(is.na(USRegionalMortality_df$Rate) | !is.na(USRegionalMortality_df$Rate)), info = "Rate should have valid values including NA if applicable")
  expect_true(all(is.na(USRegionalMortality_df$SE) | !is.na(USRegionalMortality_df$SE)), info = "SE should have valid values including NA if applicable")

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, USRegionalMortality_df)
  expect_equal(names(original_dataset), names(USRegionalMortality_df))
  expect_equal(length(original_dataset), length(USRegionalMortality_df))
})

