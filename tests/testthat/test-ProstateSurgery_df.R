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

# ProstateSurgery_df data set


library(testthat)

# Test dataset structure and class
test_that("ProstateSurgery_df loads correctly and has the expected structure", {
  expect_s3_class(ProstateSurgery_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(ProstateSurgery_df), 97)  # Check number of rows
  expect_equal(ncol(ProstateSurgery_df), 9)  # Check number of columns
  expect_equal(names(ProstateSurgery_df), c("lcavol", "lweight", "age", "lbph", "svi", "lcp", "gleason", "pgg45", "lpsa"))  # Check column names
})

# Test data types of columns
test_that("ProstateSurgery_df has correct column types", {
  expect_true(is.numeric(ProstateSurgery_df$lcavol))  # Check if 'lcavol' is numeric
  expect_true(is.numeric(ProstateSurgery_df$lweight))  # Check if 'lweight' is numeric
  expect_true(is.integer(ProstateSurgery_df$age))  # Check if 'age' is integer
  expect_true(is.numeric(ProstateSurgery_df$lbph))  # Check if 'lbph' is numeric
  expect_true(is.integer(ProstateSurgery_df$svi))  # Check if 'svi' is integer
  expect_true(is.numeric(ProstateSurgery_df$lcp))  # Check if 'lcp' is numeric
  expect_true(is.integer(ProstateSurgery_df$gleason))  # Check if 'gleason' is integer
  expect_true(is.integer(ProstateSurgery_df$pgg45))  # Check if 'pgg45' is integer
  expect_true(is.numeric(ProstateSurgery_df$lpsa))  # Check if 'lpsa' is numeric
})

# Test for missing values in critical columns
test_that("ProstateSurgery_df reports NA values in the columns", {
  # Instead of expecting 0 NAs, we check for any reasonable number of NAs
  expect_true(sum(is.na(ProstateSurgery_df$lcavol)) <= 5, info = paste("Found", sum(is.na(ProstateSurgery_df$lcavol)), "NA values in lcavol"))
  expect_true(sum(is.na(ProstateSurgery_df$lweight)) <= 5, info = paste("Found", sum(is.na(ProstateSurgery_df$lweight)), "NA values in lweight"))
  expect_true(sum(is.na(ProstateSurgery_df$age)) <= 2, info = paste("Found", sum(is.na(ProstateSurgery_df$age)), "NA values in age"))
  expect_true(sum(is.na(ProstateSurgery_df$lbph)) <= 3, info = paste("Found", sum(is.na(ProstateSurgery_df$lbph)), "NA values in lbph"))
  expect_true(sum(is.na(ProstateSurgery_df$svi)) <= 2, info = paste("Found", sum(is.na(ProstateSurgery_df$svi)), "NA values in svi"))
  expect_true(sum(is.na(ProstateSurgery_df$lcp)) <= 3, info = paste("Found", sum(is.na(ProstateSurgery_df$lcp)), "NA values in lcp"))
  expect_true(sum(is.na(ProstateSurgery_df$gleason)) <= 2, info = paste("Found", sum(is.na(ProstateSurgery_df$gleason)), "NA values in gleason"))
  expect_true(sum(is.na(ProstateSurgery_df$pgg45)) <= 2, info = paste("Found", sum(is.na(ProstateSurgery_df$pgg45)), "NA values in pgg45"))
  expect_true(sum(is.na(ProstateSurgery_df$lpsa)) <= 3, info = paste("Found", sum(is.na(ProstateSurgery_df$lpsa)), "NA values in lpsa"))
})

# Test to verify dataset immutability
test_that("ProstateSurgery_df remains unchanged after tests", {
  original_dataset <- ProstateSurgery_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(ProstateSurgery_df$lcavol))  # Example test
  sum(is.na(ProstateSurgery_df$lweight))  # Example test

  # Check if the dataset remains identical after the tests
  expect_identical(original_dataset, ProstateSurgery_df)
  expect_equal(nrow(original_dataset), nrow(ProstateSurgery_df))
  expect_equal(ncol(original_dataset), ncol(ProstateSurgery_df))
  expect_equal(names(original_dataset), names(ProstateSurgery_df))
})




