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

# PSAProstateCancer_df data set



library(testthat)

test_that("PSAProstateCancer_df loads correctly and has the expected structure", {

  # Check if the object is a data frame
  expect_true(is.data.frame(PSAProstateCancer_df))

  # Check the number of rows and columns
  expect_equal(nrow(PSAProstateCancer_df), 97)
  expect_equal(ncol(PSAProstateCancer_df), 9)

  # Check the column names
  expected_names <- c("lcavol", "lweight", "age", "lbph", "svi", "lcp", "gleason", "pgg45", "lpsa")
  expect_equal(names(PSAProstateCancer_df), expected_names)

  # Check the data types of each column
  expect_true(is.numeric(PSAProstateCancer_df$lcavol))
  expect_true(is.numeric(PSAProstateCancer_df$lweight))
  expect_true(is.integer(PSAProstateCancer_df$age))
  expect_true(is.numeric(PSAProstateCancer_df$lbph))
  expect_true(is.integer(PSAProstateCancer_df$svi))
  expect_true(is.numeric(PSAProstateCancer_df$lcp))
  expect_true(is.integer(PSAProstateCancer_df$gleason))
  expect_true(is.integer(PSAProstateCancer_df$pgg45))
  expect_true(is.numeric(PSAProstateCancer_df$lpsa))

  # Check for missing values in the dataset
  expect_false(any(is.na(PSAProstateCancer_df)))

  # Check that all integer columns contain valid integers
  integer_columns <- c("age", "svi", "gleason", "pgg45")
  for (col in integer_columns) {
    expect_true(all(PSAProstateCancer_df[[col]] == as.integer(PSAProstateCancer_df[[col]])))
  }
})




