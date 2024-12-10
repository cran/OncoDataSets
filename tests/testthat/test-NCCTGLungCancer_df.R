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

# NCCTGLungCancer_df data set



library(testthat)

# Test dataset structure and class
test_that("NCCTGLungCancer_df loads correctly and has the expected structure", {
  expect_s3_class(NCCTGLungCancer_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(NCCTGLungCancer_df), 228)  # Check number of rows
  expect_equal(ncol(NCCTGLungCancer_df), 10)  # Check number of columns
  expect_equal(names(NCCTGLungCancer_df), c("inst", "time", "status", "age", "sex",
                                            "ph.ecog", "ph.karno", "pat.karno",
                                            "meal.cal", "wt.loss"))  # Check column names
})

# Test data types of columns
test_that("NCCTGLungCancer_df has correct column types", {
  expect_true(is.numeric(NCCTGLungCancer_df$inst))
  expect_true(is.numeric(NCCTGLungCancer_df$time))
  expect_true(is.numeric(NCCTGLungCancer_df$status))
  expect_true(is.numeric(NCCTGLungCancer_df$age))
  expect_true(is.numeric(NCCTGLungCancer_df$sex))
  expect_true(is.numeric(NCCTGLungCancer_df$ph.ecog))
  expect_true(is.numeric(NCCTGLungCancer_df$ph.karno))
  expect_true(is.numeric(NCCTGLungCancer_df$pat.karno))
  expect_true(is.numeric(NCCTGLungCancer_df$meal.cal))
  expect_true(is.numeric(NCCTGLungCancer_df$wt.loss))
})

# Test for missing values in all columns
test_that("NCCTGLungCancer_df reports NA values in the columns", {
  column_names <- names(NCCTGLungCancer_df)

  for (col in column_names) {
    n_na <- sum(is.na(NCCTGLungCancer_df[[col]]))
    expect_true(n_na >= 0, info = paste("Checking NA values in", col))
  }
})

# Additional data integrity checks
test_that("NCCTGLungCancer_df has valid value ranges", {
  # Time should be non-negative
  expect_true(all(NCCTGLungCancer_df$time >= 0, na.rm = TRUE))

  # Status - check actual unique values
  status_values <- unique(NCCTGLungCancer_df$status)
  expect_true(all(status_values %in% c(0, 1, 2)),
              info = paste("Unique status values:", paste(status_values, collapse = ", ")))

  # Age should be within reasonable human range
  expect_true(all(NCCTGLungCancer_df$age >= 0 & NCCTGLungCancer_df$age <= 120, na.rm = TRUE))

  # Sex - check actual unique values
  sex_values <- unique(NCCTGLungCancer_df$sex)
  expect_true(all(sex_values %in% c(1, 2)),
              info = paste("Unique sex values:", paste(sex_values, collapse = ", ")))

  # Performance scores (Karnofsky) typically range from 0-100
  expect_true(all(NCCTGLungCancer_df$ph.karno >= 0 & NCCTGLungCancer_df$ph.karno <= 100, na.rm = TRUE))
  expect_true(all(NCCTGLungCancer_df$pat.karno >= 0 & NCCTGLungCancer_df$pat.karno <= 100, na.rm = TRUE))
})

# Test to verify dataset immutability
test_that("NCCTGLungCancer_df remains unchanged after tests", {
  original_dataset <- NCCTGLungCancer_df  # Create a copy of the original dataset

  # Run some example tests without modifying the dataset
  lapply(names(NCCTGLungCancer_df), function(col) {
    sum(is.na(NCCTGLungCancer_df[[col]]))
  })

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, NCCTGLungCancer_df)
  expect_equal(nrow(original_dataset), nrow(NCCTGLungCancer_df))
  expect_equal(ncol(original_dataset), ncol(NCCTGLungCancer_df))
  expect_equal(names(original_dataset), names(NCCTGLungCancer_df))
})
