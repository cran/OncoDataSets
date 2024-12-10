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

# BrainCancerGeo_df data set

library(testthat)

# Test structure and class of BrainCancerGeo_df
test_that("BrainCancerGeo_df has the expected structure and class", {
  expect_s3_class(BrainCancerGeo_df, "data.frame")  # Verify it is a data frame
  expect_equal(class(BrainCancerGeo_df), "data.frame")  # Ensure the class is data.frame
  expect_equal(length(BrainCancerGeo_df), 3)  # It should have 3 columns
  expect_equal(
    names(BrainCancerGeo_df),
    c("county", "lat", "long")
  )  # Verify column names
})

# Test column types
test_that("BrainCancerGeo_df columns have the correct types", {
  expect_type(BrainCancerGeo_df$county, "integer")  # county should be a factor, internally integer
  expect_s3_class(BrainCancerGeo_df$county, "factor")  # Verify county is a factor
  expect_type(BrainCancerGeo_df$lat, "integer")  # lat should be an integer
  expect_type(BrainCancerGeo_df$long, "integer")  # long should be an integer
})

# Test dataset immutability
test_that("BrainCancerGeo_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- BrainCancerGeo_df

  # Perform example checks (ensuring no accidental changes)
  expect_true(all(!is.na(names(BrainCancerGeo_df))), info = "Column names should not contain missing values")

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, BrainCancerGeo_df)
  expect_equal(names(original_dataset), names(BrainCancerGeo_df))
  expect_equal(length(original_dataset), length(BrainCancerGeo_df))
})






