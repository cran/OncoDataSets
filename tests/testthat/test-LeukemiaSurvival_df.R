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

# LeukemiaSurvival_df data set

library(testthat)

# Test dataset structure and class
test_that("LeukemiaSurvival_df loads correctly and has the expected structure", {
  expect_s3_class(LeukemiaSurvival_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(LeukemiaSurvival_df), 42)  # Check number of rows
  expect_equal(ncol(LeukemiaSurvival_df), 5)  # Check number of columns
  expect_equal(names(LeukemiaSurvival_df), c("time", "status", "sex", "logWBC", "rx"))  # Check column names
})

# Test data types of columns
test_that("LeukemiaSurvival_df has correct column types", {
  expect_true(is.integer(LeukemiaSurvival_df$time))  # Check if 'time' is integer
  expect_true(is.integer(LeukemiaSurvival_df$status))  # Check if 'status' is integer
  expect_true(is.numeric(LeukemiaSurvival_df$sex))  # Check if 'sex' is numeric
  expect_true(is.numeric(LeukemiaSurvival_df$logWBC))  # Check if 'logWBC' is numeric
  expect_true(is.numeric(LeukemiaSurvival_df$rx))  # Check if 'rx' is numeric
})

# Test for missing values in critical columns
test_that("LeukemiaSurvival_df reports NA values in the columns", {
  n_na_time <- sum(is.na(LeukemiaSurvival_df$time))
  n_na_status <- sum(is.na(LeukemiaSurvival_df$status))
  n_na_sex <- sum(is.na(LeukemiaSurvival_df$sex))
  n_na_logWBC <- sum(is.na(LeukemiaSurvival_df$logWBC))
  n_na_rx <- sum(is.na(LeukemiaSurvival_df$rx))

  expect_true(n_na_time == 0, info = paste("Found", n_na_time, "NA values in time"))
  expect_true(n_na_status == 0, info = paste("Found", n_na_status, "NA values in status"))
  expect_true(n_na_sex == 0, info = paste("Found", n_na_sex, "NA values in sex"))
  expect_true(n_na_logWBC == 0, info = paste("Found", n_na_logWBC, "NA values in logWBC"))
  expect_true(n_na_rx == 0, info = paste("Found", n_na_rx, "NA values in rx"))
})

