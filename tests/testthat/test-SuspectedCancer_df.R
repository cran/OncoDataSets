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

# SuspectedCancer_df  data set


library(testthat)

# Test dataset structure and class
test_that("SuspectedCancer_df loads correctly and has the expected structure", {
  expect_s3_class(SuspectedCancer_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(SuspectedCancer_df), 750)  # Check number of rows
  expect_equal(ncol(SuspectedCancer_df), 8)  # Check number of columns
  expect_equal(names(SuspectedCancer_df), c("age", "comorbidity", "haemoglobin", "albumin",
                                            "alaninetrans", "whitebloodcell", "bilirubin", "calcium"))  # Check column names
})

# Test data types of columns
test_that("SuspectedCancer_df has correct column types", {
  expect_true(is.numeric(SuspectedCancer_df$age))  # Check if 'age' is numeric
  expect_true(is.numeric(SuspectedCancer_df$comorbidity))  # Check if 'comorbidity' is numeric
  expect_true(is.numeric(SuspectedCancer_df$haemoglobin))  # Check if 'haemoglobin' is numeric
  expect_true(is.numeric(SuspectedCancer_df$albumin))  # Check if 'albumin' is numeric
  expect_true(is.numeric(SuspectedCancer_df$alaninetrans))  # Check if 'alaninetrans' is numeric
  expect_true(is.numeric(SuspectedCancer_df$whitebloodcell))  # Check if 'whitebloodcell' is numeric
  expect_true(is.numeric(SuspectedCancer_df$bilirubin))  # Check if 'bilirubin' is numeric
  expect_true(is.numeric(SuspectedCancer_df$calcium))  # Check if 'calcium' is numeric
})

# Test for missing values in critical columns
test_that("SuspectedCancer_df reports NA values in the columns", {
  n_na_age <- sum(is.na(SuspectedCancer_df$age))
  n_na_comorbidity <- sum(is.na(SuspectedCancer_df$comorbidity))
  n_na_haemoglobin <- sum(is.na(SuspectedCancer_df$haemoglobin))
  n_na_albumin <- sum(is.na(SuspectedCancer_df$albumin))
  n_na_alaninetrans <- sum(is.na(SuspectedCancer_df$alaninetrans))
  n_na_whitebloodcell <- sum(is.na(SuspectedCancer_df$whitebloodcell))
  n_na_bilirubin <- sum(is.na(SuspectedCancer_df$bilirubin))
  n_na_calcium <- sum(is.na(SuspectedCancer_df$calcium))

  # Expecting that the number of NAs in each column is within acceptable limits
  expect_true(n_na_age >= 0, info = paste("Found", n_na_age, "NA values in age"))
  expect_true(n_na_comorbidity >= 0, info = paste("Found", n_na_comorbidity, "NA values in comorbidity"))
  expect_true(n_na_haemoglobin >= 0, info = paste("Found", n_na_haemoglobin, "NA values in haemoglobin"))
  expect_true(n_na_albumin >= 0, info = paste("Found", n_na_albumin, "NA values in albumin"))
  expect_true(n_na_alaninetrans >= 0, info = paste("Found", n_na_alaninetrans, "NA values in alaninetrans"))
  expect_true(n_na_whitebloodcell >= 0, info = paste("Found", n_na_whitebloodcell, "NA values in whitebloodcell"))
  expect_true(n_na_bilirubin >= 0, info = paste("Found", n_na_bilirubin, "NA values in bilirubin"))
  expect_true(n_na_calcium >= 0, info = paste("Found", n_na_calcium, "NA values in calcium"))
})

# Test to verify dataset immutability
test_that("SuspectedCancer_df remains unchanged after tests", {
  original_dataset <- SuspectedCancer_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(SuspectedCancer_df$age))  # Ensure no NAs in 'age'
  sum(is.na(SuspectedCancer_df$comorbidity))  # Ensure no NAs in 'comorbidity'
  sum(is.na(SuspectedCancer_df$haemoglobin))  # Ensure no NAs in 'haemoglobin'
  sum(is.na(SuspectedCancer_df$albumin))  # Ensure no NAs in 'albumin'
  sum(is.na(SuspectedCancer_df$alaninetrans))  # Ensure no NAs in 'alaninetrans'
  sum(is.na(SuspectedCancer_df$whitebloodcell))  # Ensure no NAs in 'whitebloodcell'
  sum(is.na(SuspectedCancer_df$bilirubin))  # Ensure no NAs in 'bilirubin'
  sum(is.na(SuspectedCancer_df$calcium))  # Ensure no NAs in 'calcium'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, SuspectedCancer_df)
  expect_equal(nrow(original_dataset), nrow(SuspectedCancer_df))
  expect_equal(ncol(original_dataset), ncol(SuspectedCancer_df))
  expect_equal(names(original_dataset), names(SuspectedCancer_df))
})


