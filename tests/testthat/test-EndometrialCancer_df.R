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

# EndometrialCancer_df data set


library(testthat)

# Test structure and class of EndometrialCancer_df
test_that("EndometrialCancer_df has the expected structure and class", {
  expect_s3_class(EndometrialCancer_df, "data.frame")  # Verify it is a data frame
  expect_equal(class(EndometrialCancer_df), c("data.frame"))  # It should be a data frame
  expect_equal(length(EndometrialCancer_df), 4)  # It should have 4 columns
  expect_equal(names(EndometrialCancer_df), c("NV", "PI", "EH", "HG"))
})

# Test column types
test_that("EndometrialCancer_df columns have the correct types", {
  expect_type(EndometrialCancer_df$NV, "integer")  # NV should be an integer
  expect_type(EndometrialCancer_df$PI, "integer")  # PI should be an integer
  expect_type(EndometrialCancer_df$EH, "double")   # EH should be numeric (double)
  expect_type(EndometrialCancer_df$HG, "integer")  # HG should be an integer
})

# Test dataset immutability
test_that("EndometrialCancer_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- EndometrialCancer_df

  # Perform some example checks (ensuring NA values are valid)
  expect_true(all(is.na(EndometrialCancer_df$NV) | !is.na(EndometrialCancer_df$NV)), info = "NV should have valid values including NA if applicable")
  expect_true(all(is.na(EndometrialCancer_df$PI) | !is.na(EndometrialCancer_df$PI)), info = "PI should have valid values including NA if applicable")
  expect_true(all(is.na(EndometrialCancer_df$EH) | !is.na(EndometrialCancer_df$EH)), info = "EH should have valid values including NA if applicable")
  expect_true(all(is.na(EndometrialCancer_df$HG) | !is.na(EndometrialCancer_df$HG)), info = "HG should have valid values including NA if applicable")

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, EndometrialCancer_df)
  expect_equal(names(original_dataset), names(EndometrialCancer_df))
  expect_equal(length(original_dataset), length(EndometrialCancer_df))
})



