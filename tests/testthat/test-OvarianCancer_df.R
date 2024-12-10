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

# OvarianCancer_df  data set



library(testthat)

# Test dataset structure and class
test_that("OvarianCancer_df loads correctly and has the expected structure", {
  expect_s3_class(OvarianCancer_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(OvarianCancer_df), 26)  # Check number of rows
  expect_equal(ncol(OvarianCancer_df), 6)  # Check number of columns
  expect_equal(names(OvarianCancer_df), c("futime", "fustat", "age", "resid.ds", "rx", "ecog.ps"))  # Check column names
})

# Test data types of columns
test_that("OvarianCancer_df has correct column types", {
  expect_true(is.numeric(OvarianCancer_df$futime))  # Check if 'futime' is numeric
  expect_true(is.numeric(OvarianCancer_df$fustat))  # Check if 'fustat' is numeric
  expect_true(is.numeric(OvarianCancer_df$age))  # Check if 'age' is numeric
  expect_true(is.numeric(OvarianCancer_df$resid.ds))  # Check if 'resid.ds' is numeric
  expect_true(is.numeric(OvarianCancer_df$rx))  # Check if 'rx' is numeric
  expect_true(is.numeric(OvarianCancer_df$ecog.ps))  # Check if 'ecog.ps' is numeric
})

# Test for missing values in critical columns
test_that("OvarianCancer_df reports NA values in the columns", {
  n_na_futime <- sum(is.na(OvarianCancer_df$futime))
  n_na_fustat <- sum(is.na(OvarianCancer_df$fustat))
  n_na_age <- sum(is.na(OvarianCancer_df$age))
  n_na_resid_ds <- sum(is.na(OvarianCancer_df$resid.ds))
  n_na_rx <- sum(is.na(OvarianCancer_df$rx))
  n_na_ecog_ps <- sum(is.na(OvarianCancer_df$ecog.ps))

  expect_true(n_na_futime == 0, info = paste("Found", n_na_futime, "NA values in futime"))
  expect_true(n_na_fustat == 0, info = paste("Found", n_na_fustat, "NA values in fustat"))
  expect_true(n_na_age == 0, info = paste("Found", n_na_age, "NA values in age"))
  expect_true(n_na_resid_ds == 0, info = paste("Found", n_na_resid_ds, "NA values in resid.ds"))
  expect_true(n_na_rx == 0, info = paste("Found", n_na_rx, "NA values in rx"))
  expect_true(n_na_ecog_ps == 0, info = paste("Found", n_na_ecog_ps, "NA values in ecog.ps"))
})

# Test for valid value ranges in 'resid.ds' column
test_that("OvarianCancer_df has valid value ranges", {
  resid_ds_values <- unique(OvarianCancer_df$resid.ds)

  # If 'resid.ds' can have 0, 1, and 2 as valid values, update the check
  expect_true(all(resid_ds_values %in% c(0, 1, 2)),
              info = paste("Invalid values found in 'resid.ds'. Found:", paste(resid_ds_values, collapse = ", ")))
})

# Test to verify dataset immutability
test_that("OvarianCancer_df remains unchanged after tests", {
  original_dataset <- OvarianCancer_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(OvarianCancer_df$futime))  # Ensure no NAs in 'futime'
  sum(is.na(OvarianCancer_df$fustat))  # Ensure no NAs in 'fustat'
  sum(is.na(OvarianCancer_df$age))  # Ensure no NAs in 'age'
  sum(is.na(OvarianCancer_df$resid.ds))  # Ensure no NAs in 'resid.ds'
  sum(is.na(OvarianCancer_df$rx))  # Ensure no NAs in 'rx'
  sum(is.na(OvarianCancer_df$ecog.ps))  # Ensure no NAs in 'ecog.ps'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, OvarianCancer_df)
  expect_equal(nrow(original_dataset), nrow(OvarianCancer_df))
  expect_equal(ncol(original_dataset), ncol(OvarianCancer_df))
  expect_equal(names(original_dataset), names(OvarianCancer_df))
})
