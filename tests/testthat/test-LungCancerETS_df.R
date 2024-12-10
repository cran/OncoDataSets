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

# LungCancerETS_df data set

library(testthat)

# Test dataset structure and class
test_that("LungCancerETS_df loads correctly and has the expected structure", {
  expect_s3_class(LungCancerETS_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(LungCancerETS_df), 37)  # Check number of rows
  expect_equal(ncol(LungCancerETS_df), 11)  # Check number of columns
  expect_equal(names(LungCancerETS_df), c("study", "author", "year", "country", "design", "cases",
                                          "or", "or.lb", "or.ub", "yi", "vi"))  # Check column names
})

# Test data types of columns
test_that("LungCancerETS_df has correct column types", {
  expect_true(is.numeric(LungCancerETS_df$study))  # Check if 'study' is numeric
  expect_true(is.character(LungCancerETS_df$author))  # Check if 'author' is character
  expect_true(is.numeric(LungCancerETS_df$year))  # Check if 'year' is numeric
  expect_true(is.character(LungCancerETS_df$country))  # Check if 'country' is character
  expect_true(is.character(LungCancerETS_df$design))  # Check if 'design' is character
  expect_true(is.numeric(LungCancerETS_df$cases))  # Check if 'cases' is numeric
  expect_true(is.numeric(LungCancerETS_df$or))  # Check if 'or' is numeric
  expect_true(is.numeric(LungCancerETS_df$or.lb))  # Check if 'or.lb' is numeric
  expect_true(is.numeric(LungCancerETS_df$or.ub))  # Check if 'or.ub' is numeric
  expect_true(is.numeric(LungCancerETS_df$yi))  # Check if 'yi' is numeric
  expect_true(is.numeric(LungCancerETS_df$vi))  # Check if 'vi' is numeric
})

# Test for missing values in critical columns
test_that("LungCancerETS_df reports NA values in the columns", {
  n_na_study <- sum(is.na(LungCancerETS_df$study))
  n_na_author <- sum(is.na(LungCancerETS_df$author))
  n_na_year <- sum(is.na(LungCancerETS_df$year))
  n_na_country <- sum(is.na(LungCancerETS_df$country))
  n_na_design <- sum(is.na(LungCancerETS_df$design))
  n_na_cases <- sum(is.na(LungCancerETS_df$cases))
  n_na_or <- sum(is.na(LungCancerETS_df$or))
  n_na_or_lb <- sum(is.na(LungCancerETS_df$or.lb))
  n_na_or_ub <- sum(is.na(LungCancerETS_df$or.ub))
  n_na_yi <- sum(is.na(LungCancerETS_df$yi))
  n_na_vi <- sum(is.na(LungCancerETS_df$vi))

  expect_true(n_na_study == 0, info = paste("Found", n_na_study, "NA values in study"))
  expect_true(n_na_author == 0, info = paste("Found", n_na_author, "NA values in author"))
  expect_true(n_na_year == 0, info = paste("Found", n_na_year, "NA values in year"))
  expect_true(n_na_country == 0, info = paste("Found", n_na_country, "NA values in country"))
  expect_true(n_na_design == 0, info = paste("Found", n_na_design, "NA values in design"))
  expect_true(n_na_cases == 0, info = paste("Found", n_na_cases, "NA values in cases"))
  expect_true(n_na_or == 0, info = paste("Found", n_na_or, "NA values in or"))
  expect_true(n_na_or_lb == 0, info = paste("Found", n_na_or_lb, "NA values in or.lb"))
  expect_true(n_na_or_ub == 0, info = paste("Found", n_na_or_ub, "NA values in or.ub"))
  expect_true(n_na_yi == 0, info = paste("Found", n_na_yi, "NA values in yi"))
  expect_true(n_na_vi == 0, info = paste("Found", n_na_vi, "NA values in vi"))
})

