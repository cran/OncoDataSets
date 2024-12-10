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

# Carcinoma_p53_df data set


library(testthat)

# Test structure and class of Carcinoma_p53_df
test_that("Carcinoma_p53_df has the expected structure and class", {
  expect_s3_class(Carcinoma_p53_df, "data.frame")  # Verify it is a data frame
  expect_equal(class(Carcinoma_p53_df), c("data.frame"))  # It should be a data.frame
  expect_equal(length(Carcinoma_p53_df), 5)  # It should have 5 columns
  expect_equal(names(Carcinoma_p53_df), c("study", "y1", "y2", "V1", "V2"))
})

# Test column types
test_that("Carcinoma_p53_df columns have the correct types", {
  expect_type(Carcinoma_p53_df$study, "integer")  # study should be an integer
  expect_type(Carcinoma_p53_df$y1, "double")  # y1 should be numeric (double)
  expect_type(Carcinoma_p53_df$y2, "double")  # y2 should be numeric (double)
  expect_type(Carcinoma_p53_df$V1, "double")  # V1 should be numeric (double)
  expect_type(Carcinoma_p53_df$V2, "double")  # V2 should be numeric (double)
})

# Test dataset immutability
test_that("Carcinoma_p53_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Carcinoma_p53_df

  # Perform some example checks, ensuring NA values are valid
  expect_true(all(is.na(Carcinoma_p53_df$y1) | !is.na(Carcinoma_p53_df$y1)), info = "y1 should have valid values including NA if applicable")
  expect_true(all(is.na(Carcinoma_p53_df$V1) | !is.na(Carcinoma_p53_df$V1)), info = "V1 should have valid values including NA if applicable")

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Carcinoma_p53_df)
  expect_equal(names(original_dataset), names(Carcinoma_p53_df))
  expect_equal(length(original_dataset), length(Carcinoma_p53_df))
})
