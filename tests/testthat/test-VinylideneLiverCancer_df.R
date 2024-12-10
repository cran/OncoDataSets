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

# VinylideneLiverCancer_df data set



library(testthat)

# Test dataset structure and class
test_that("VinylideneLiverCancer_df loads correctly and has the expected structure", {
  expect_s3_class(VinylideneLiverCancer_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(VinylideneLiverCancer_df), 40)  # Check number of rows
  expect_equal(ncol(VinylideneLiverCancer_df), 4)  # Check number of columns
  expect_equal(names(VinylideneLiverCancer_df), c("SDH", "SGOT", "SGPT", "dose"))  # Check column names
})

# Test data types of columns
test_that("VinylideneLiverCancer_df has correct column types", {
  expect_true(is.integer(VinylideneLiverCancer_df$SDH))  # Check if 'SDH' is integer
  expect_true(is.integer(VinylideneLiverCancer_df$SGOT))  # Check if 'SGOT' is integer
  expect_true(is.integer(VinylideneLiverCancer_df$SGPT))  # Check if 'SGPT' is integer
  expect_true(is.factor(VinylideneLiverCancer_df$dose))  # Check if 'dose' is a factor
})

# Test for missing values in critical columns
test_that("VinylideneLiverCancer_df reports NA values in the columns", {
  # Since this dataset is small, we check if the NA count is acceptable
  expect_true(sum(is.na(VinylideneLiverCancer_df$SDH)) <= 1, info = paste("Found", sum(is.na(VinylideneLiverCancer_df$SDH)), "NA values in SDH"))
  expect_true(sum(is.na(VinylideneLiverCancer_df$SGOT)) <= 1, info = paste("Found", sum(is.na(VinylideneLiverCancer_df$SGOT)), "NA values in SGOT"))
  expect_true(sum(is.na(VinylideneLiverCancer_df$SGPT)) <= 1, info = paste("Found", sum(is.na(VinylideneLiverCancer_df$SGPT)), "NA values in SGPT"))
  expect_true(sum(is.na(VinylideneLiverCancer_df$dose)) <= 1, info = paste("Found", sum(is.na(VinylideneLiverCancer_df$dose)), "NA values in dose"))
})

# Test to verify dataset immutability
test_that("VinylideneLiverCancer_df remains unchanged after tests", {
  original_dataset <- VinylideneLiverCancer_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(VinylideneLiverCancer_df$SDH))  # Example test
  sum(is.na(VinylideneLiverCancer_df$SGOT))  # Example test

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, VinylideneLiverCancer_df)
  expect_equal(nrow(original_dataset), nrow(VinylideneLiverCancer_df))
  expect_equal(ncol(original_dataset), ncol(VinylideneLiverCancer_df))
  expect_equal(names(original_dataset), names(VinylideneLiverCancer_df))
})



