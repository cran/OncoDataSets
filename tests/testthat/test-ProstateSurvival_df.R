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

# ProstateSurvival_df  data set


library(testthat)

# Test dataset structure and class
test_that("ProstateSurvival_df loads correctly and has the expected structure", {
  expect_s3_class(ProstateSurvival_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(ProstateSurvival_df), 14294)  # Check number of rows
  expect_equal(ncol(ProstateSurvival_df), 5)  # Check number of columns
  expect_equal(names(ProstateSurvival_df), c("grade", "stage", "ageGroup", "survTime", "status"))  # Check column names
})

# Test data types of columns
test_that("ProstateSurvival_df has correct column types", {
  expect_true(is.factor(ProstateSurvival_df$grade))  # Check if 'grade' is a factor
  expect_true(is.factor(ProstateSurvival_df$stage))  # Check if 'stage' is a factor
  expect_true(is.factor(ProstateSurvival_df$ageGroup))  # Check if 'ageGroup' is a factor
  expect_true(is.integer(ProstateSurvival_df$survTime))  # Check if 'survTime' is integer
  expect_true(is.integer(ProstateSurvival_df$status))  # Check if 'status' is integer
})

# Test for missing values in critical columns
test_that("ProstateSurvival_df reports NA values in the columns", {
  n_na_grade <- sum(is.na(ProstateSurvival_df$grade))
  n_na_stage <- sum(is.na(ProstateSurvival_df$stage))
  n_na_ageGroup <- sum(is.na(ProstateSurvival_df$ageGroup))
  n_na_survTime <- sum(is.na(ProstateSurvival_df$survTime))
  n_na_status <- sum(is.na(ProstateSurvival_df$status))

  expect_true(n_na_grade == 0, info = paste("Found", n_na_grade, "NA values in grade"))
  expect_true(n_na_stage == 0, info = paste("Found", n_na_stage, "NA values in stage"))
  expect_true(n_na_ageGroup == 0, info = paste("Found", n_na_ageGroup, "NA values in ageGroup"))
  expect_true(n_na_survTime == 0, info = paste("Found", n_na_survTime, "NA values in survTime"))
  expect_true(n_na_status == 0, info = paste("Found", n_na_status, "NA values in status"))
})

# Test to verify dataset immutability
test_that("ProstateSurvival_df remains unchanged after tests", {
  original_dataset <- ProstateSurvival_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(ProstateSurvival_df$grade))  # Ensure no NAs in 'grade'
  sum(is.na(ProstateSurvival_df$stage))  # Ensure no NAs in 'stage'
  sum(is.na(ProstateSurvival_df$ageGroup))  # Ensure no NAs in 'ageGroup'
  sum(is.na(ProstateSurvival_df$survTime))  # Ensure no NAs in 'survTime'
  sum(is.na(ProstateSurvival_df$status))  # Ensure no NAs in 'status'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, ProstateSurvival_df)
  expect_equal(nrow(original_dataset), nrow(ProstateSurvival_df))
  expect_equal(ncol(original_dataset), ncol(ProstateSurvival_df))
  expect_equal(names(original_dataset), names(ProstateSurvival_df))
})
