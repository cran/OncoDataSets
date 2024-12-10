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

# HeadNeckCarcinoma_df data set

library(testthat)

# Test dataset structure and class
test_that("HeadNeckCarcinoma_df loads correctly and has the expected structure", {
  expect_s3_class(HeadNeckCarcinoma_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(HeadNeckCarcinoma_df), 65)  # Check number of rows
  expect_equal(ncol(HeadNeckCarcinoma_df), 5)  # Check number of columns
  expect_equal(names(HeadNeckCarcinoma_df), c("id", "trial", "OmE", "V", "grp"))  # Check column names
})

# Test data types of columns
test_that("HeadNeckCarcinoma_df has correct column types", {
  expect_true(is.numeric(HeadNeckCarcinoma_df$id))  # Check if 'id' is numeric
  expect_true(is.character(HeadNeckCarcinoma_df$trial))  # Check if 'trial' is character
  expect_true(is.numeric(HeadNeckCarcinoma_df$OmE))  # Check if 'OmE' is numeric
  expect_true(is.numeric(HeadNeckCarcinoma_df$V))  # Check if 'V' is numeric
  expect_true(is.integer(HeadNeckCarcinoma_df$grp))  # Check if 'grp' is integer
})

# Test for missing values in critical columns
test_that("HeadNeckCarcinoma_df reports NA values in the columns", {
  n_na_id <- sum(is.na(HeadNeckCarcinoma_df$id))
  n_na_trial <- sum(is.na(HeadNeckCarcinoma_df$trial))
  n_na_OmE <- sum(is.na(HeadNeckCarcinoma_df$OmE))
  n_na_V <- sum(is.na(HeadNeckCarcinoma_df$V))
  n_na_grp <- sum(is.na(HeadNeckCarcinoma_df$grp))

  expect_true(n_na_id == 0, info = paste("Found", n_na_id, "NA values in id"))
  expect_true(n_na_trial == 0, info = paste("Found", n_na_trial, "NA values in trial"))
  expect_true(n_na_OmE == 0, info = paste("Found", n_na_OmE, "NA values in OmE"))
  expect_true(n_na_V == 0, info = paste("Found", n_na_V, "NA values in V"))
  expect_true(n_na_grp == 0, info = paste("Found", n_na_grp, "NA values in grp"))
})

