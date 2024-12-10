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

# BRCA1OvarianCancer_df data set


library(testthat)

# Test dataset structure and class
test_that("BRCA1OvarianCancer_df loads correctly and has the expected structure", {
  expect_s3_class(BRCA1OvarianCancer_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(BRCA1OvarianCancer_df), 63)  # Check number of rows
  expect_equal(ncol(BRCA1OvarianCancer_df), 2)  # Check number of columns
  expect_equal(names(BRCA1OvarianCancer_df), c("age", "cumRisk"))  # Check column names
})

# Test data types of columns
test_that("BRCA1OvarianCancer_df has correct column types", {
  expect_true(is.numeric(BRCA1OvarianCancer_df$age))  # Check if 'age' is numeric
  expect_true(is.numeric(BRCA1OvarianCancer_df$cumRisk))  # Check if 'cumRisk' is numeric
})

# Test for missing values in critical columns
test_that("BRCA1OvarianCancer_df reports NA values in the columns", {
  n_na_age <- sum(is.na(BRCA1OvarianCancer_df$age))
  n_na_cumRisk <- sum(is.na(BRCA1OvarianCancer_df$cumRisk))

  expect_true(n_na_age == 0, info = paste("Found", n_na_age, "NA values in age"))
  expect_true(n_na_cumRisk == 0, info = paste("Found", n_na_cumRisk, "NA values in cumRisk"))
})

