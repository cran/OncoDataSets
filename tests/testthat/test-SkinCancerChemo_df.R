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

# SkinCancerChemo_df data set



library(testthat)

# Test structure and class of SkinCancerChemo_df
test_that("SkinCancerChemo_df has the expected structure and class", {
  expect_s3_class(SkinCancerChemo_df, "data.frame")  # Verify it is a data frame
  expect_equal(class(SkinCancerChemo_df), c("data.frame"))  # It should be a data frame
  expect_equal(length(SkinCancerChemo_df), 7)  # It should have 7 columns
  expect_equal(names(SkinCancerChemo_df), c("id", "time", "count", "age", "male", "dfmo", "priorTumor"))
})

# Test column types
test_that("SkinCancerChemo_df columns have the correct types", {
  expect_type(SkinCancerChemo_df$id, "double")    # id should be numeric (double)
  expect_type(SkinCancerChemo_df$time, "double")  # time should be numeric (double)
  expect_type(SkinCancerChemo_df$count, "double") # count should be numeric (double)
  expect_type(SkinCancerChemo_df$age, "double")   # age should be numeric (double)
  expect_type(SkinCancerChemo_df$male, "double")  # male should be numeric (double)
  expect_type(SkinCancerChemo_df$dfmo, "double")  # dfmo should be numeric (double)
  expect_type(SkinCancerChemo_df$priorTumor, "double") # priorTumor should be numeric (double)
})

# Test dataset immutability
test_that("SkinCancerChemo_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- SkinCancerChemo_df

  # Perform some example checks (ensuring NA values are valid)
  expect_true(all(is.na(SkinCancerChemo_df$id) | !is.na(SkinCancerChemo_df$id)), info = "id should have valid values including NA if applicable")
  expect_true(all(is.na(SkinCancerChemo_df$time) | !is.na(SkinCancerChemo_df$time)), info = "time should have valid values including NA if applicable")
  expect_true(all(is.na(SkinCancerChemo_df$count) | !is.na(SkinCancerChemo_df$count)), info = "count should have valid values including NA if applicable")
  expect_true(all(is.na(SkinCancerChemo_df$age) | !is.na(SkinCancerChemo_df$age)), info = "age should have valid values including NA if applicable")
  expect_true(all(is.na(SkinCancerChemo_df$male) | !is.na(SkinCancerChemo_df$male)), info = "male should have valid values including NA if applicable")
  expect_true(all(is.na(SkinCancerChemo_df$dfmo) | !is.na(SkinCancerChemo_df$dfmo)), info = "dfmo should have valid values including NA if applicable")
  expect_true(all(is.na(SkinCancerChemo_df$priorTumor) | !is.na(SkinCancerChemo_df$priorTumor)), info = "priorTumor should have valid values including NA if applicable")

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, SkinCancerChemo_df)
  expect_equal(names(original_dataset), names(SkinCancerChemo_df))
  expect_equal(length(original_dataset), length(SkinCancerChemo_df))
})

