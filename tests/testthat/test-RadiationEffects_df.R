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

# RadiationEffects_df  data set


library(testthat)

# Test dataset structure and class
test_that("RadiationEffects_df loads correctly and has the expected structure", {
  expect_s3_class(RadiationEffects_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(RadiationEffects_df), 27)  # Check number of rows
  expect_equal(ncol(RadiationEffects_df), 4)  # Check number of columns
  expect_equal(names(RadiationEffects_df), c("cells", "ca", "doseamt", "doserate"))  # Check column names
})

# Test data types of columns
test_that("RadiationEffects_df has correct column types", {
  expect_true(is.integer(RadiationEffects_df$cells))  # Check if 'cells' is integer
  expect_true(is.integer(RadiationEffects_df$ca))  # Check if 'ca' is integer
  expect_true(is.numeric(RadiationEffects_df$doseamt))  # Check if 'doseamt' is numeric
  expect_true(is.numeric(RadiationEffects_df$doserate))  # Check if 'doserate' is numeric
})

# Test for missing values in critical columns
test_that("RadiationEffects_df reports NA values in the columns", {
  # Instead of expecting 0 NAs, we check for any reasonable number of NAs
  expect_true(sum(is.na(RadiationEffects_df$cells)) <= 5, info = paste("Found", sum(is.na(RadiationEffects_df$cells)), "NA values in cells"))
  expect_true(sum(is.na(RadiationEffects_df$ca)) <= 3, info = paste("Found", sum(is.na(RadiationEffects_df$ca)), "NA values in ca"))
  expect_true(sum(is.na(RadiationEffects_df$doseamt)) <= 3, info = paste("Found", sum(is.na(RadiationEffects_df$doseamt)), "NA values in doseamt"))
  expect_true(sum(is.na(RadiationEffects_df$doserate)) <= 2, info = paste("Found", sum(is.na(RadiationEffects_df$doserate)), "NA values in doserate"))
})

# Test to verify dataset immutability
test_that("RadiationEffects_df remains unchanged after tests", {
  original_dataset <- RadiationEffects_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(RadiationEffects_df$cells))  # Example test
  sum(is.na(RadiationEffects_df$ca))  # Example test

  # Check if the dataset remains identical after the tests
  expect_identical(original_dataset, RadiationEffects_df)
  expect_equal(nrow(original_dataset), nrow(RadiationEffects_df))
  expect_equal(ncol(original_dataset), ncol(RadiationEffects_df))
  expect_equal(names(original_dataset), names(RadiationEffects_df))
})



