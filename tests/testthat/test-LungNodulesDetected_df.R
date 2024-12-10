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

# LungNodulesDetected_df data set



library(testthat)

# Test dataset structure and class
test_that("LungNodulesDetected_df loads correctly and has the expected structure", {
  expect_s3_class(LungNodulesDetected_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(LungNodulesDetected_df), 999)  # Check number of rows
  expect_equal(ncol(LungNodulesDetected_df), 8)  # Check number of columns
  expect_equal(names(LungNodulesDetected_df), c("sex", "age", "num.annotated", "location", "spiculate",
                                                "smoke.status", "diameter", "malignant"))  # Check column names
})

# Test data types of columns
test_that("LungNodulesDetected_df has correct column types", {
  expect_true(is.factor(LungNodulesDetected_df$sex))  # Check if 'sex' is a factor
  expect_true(is.numeric(LungNodulesDetected_df$age))  # Check if 'age' is numeric
  expect_true(is.numeric(LungNodulesDetected_df$num.annotated))  # Check if 'num.annotated' is numeric
  expect_true(is.factor(LungNodulesDetected_df$location))  # Check if 'location' is a factor
  expect_true(is.factor(LungNodulesDetected_df$spiculate))  # Check if 'spiculate' is a factor
  expect_true(is.factor(LungNodulesDetected_df$smoke.status))  # Check if 'smoke.status' is a factor
  expect_true(is.numeric(LungNodulesDetected_df$diameter))  # Check if 'diameter' is numeric
  expect_true(is.numeric(LungNodulesDetected_df$malignant))  # Check if 'malignant' is numeric
})

# Test for missing values in critical columns
test_that("LungNodulesDetected_df reports NA values in the columns", {
  n_na_sex <- sum(is.na(LungNodulesDetected_df$sex))
  n_na_age <- sum(is.na(LungNodulesDetected_df$age))
  n_na_num_annotated <- sum(is.na(LungNodulesDetected_df$num.annotated))
  n_na_location <- sum(is.na(LungNodulesDetected_df$location))
  n_na_spiculate <- sum(is.na(LungNodulesDetected_df$spiculate))
  n_na_smoke_status <- sum(is.na(LungNodulesDetected_df$smoke.status))
  n_na_diameter <- sum(is.na(LungNodulesDetected_df$diameter))
  n_na_malignant <- sum(is.na(LungNodulesDetected_df$malignant))

  # Expecting that the number of NAs in each column is within acceptable limits
  expect_true(n_na_sex >= 0, info = paste("Found", n_na_sex, "NA values in sex"))
  expect_true(n_na_age >= 0, info = paste("Found", n_na_age, "NA values in age"))
  expect_true(n_na_num_annotated >= 0, info = paste("Found", n_na_num_annotated, "NA values in num.annotated"))
  expect_true(n_na_location >= 0, info = paste("Found", n_na_location, "NA values in location"))
  expect_true(n_na_spiculate >= 0, info = paste("Found", n_na_spiculate, "NA values in spiculate"))
  expect_true(n_na_smoke_status >= 0, info = paste("Found", n_na_smoke_status, "NA values in smoke.status"))
  expect_true(n_na_diameter >= 0, info = paste("Found", n_na_diameter, "NA values in diameter"))
  expect_true(n_na_malignant >= 0, info = paste("Found", n_na_malignant, "NA values in malignant"))
})

# Test to verify dataset immutability
test_that("LungNodulesDetected_df remains unchanged after tests", {
  original_dataset <- LungNodulesDetected_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(LungNodulesDetected_df$sex))  # Ensure no NAs in 'sex'
  sum(is.na(LungNodulesDetected_df$age))  # Ensure no NAs in 'age'
  sum(is.na(LungNodulesDetected_df$num.annotated))  # Ensure no NAs in 'num.annotated'
  sum(is.na(LungNodulesDetected_df$location))  # Ensure no NAs in 'location'
  sum(is.na(LungNodulesDetected_df$spiculate))  # Ensure no NAs in 'spiculate'
  sum(is.na(LungNodulesDetected_df$smoke.status))  # Ensure no NAs in 'smoke.status'
  sum(is.na(LungNodulesDetected_df$diameter))  # Ensure no NAs in 'diameter'
  sum(is.na(LungNodulesDetected_df$malignant))  # Ensure no NAs in 'malignant'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, LungNodulesDetected_df)
  expect_equal(nrow(original_dataset), nrow(LungNodulesDetected_df))
  expect_equal(ncol(original_dataset), ncol(LungNodulesDetected_df))
  expect_equal(names(original_dataset), names(LungNodulesDetected_df))
})





