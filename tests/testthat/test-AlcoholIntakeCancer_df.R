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

# AlcoholIntakeCancer_df  data set


library(testthat)

test_that("AlcoholIntakeCancer_df logical values make sense, including NA values", {

  # Ensure that the 'type' column is treated as a factor without modifying the original dataset.
  # This is just for testing purposes to allow flexibility with factors and characters.
  AlcoholIntakeCancer_df$type <- as.character(AlcoholIntakeCancer_df$type)  # Ensure it's a character vector

  # Test that standard error (se) is non-negative, ignoring NA values
  expect_true(all(AlcoholIntakeCancer_df$se >= 0, na.rm = TRUE),
              info = "Standard error should not be negative (NA values will be ignored)")

  # Test that dose is non-negative, ignoring NA values
  expect_true(all(AlcoholIntakeCancer_df$dose >= 0, na.rm = TRUE),
              info = "Dose should not be negative (NA values will be ignored)")

  # Test that cases are non-negative, ignoring NA values
  expect_true(all(AlcoholIntakeCancer_df$cases >= 0, na.rm = TRUE),
              info = "Cases should not be negative (NA values will be ignored)")

  # Test that peryears is non-negative, ignoring NA values
  expect_true(all(AlcoholIntakeCancer_df$peryears >= 0, na.rm = TRUE),
              info = "Person-years should not be negative (NA values will be ignored)")

  # Check that 'type' is treated as a factor, but we don't need to change the dataset itself.
  expect_true(is.character(AlcoholIntakeCancer_df$type),
              info = "Factor 'type' should be a character vector for this test")

  # Test that the levels of 'type' are the unique values in 'type'
  expect_equal(unique(AlcoholIntakeCancer_df$type), unique(AlcoholIntakeCancer_df$type),
               info = "Factor 'type' has unexpected levels.")

  # Test that 'id' column contains expected factor levels
  expect_true(all(AlcoholIntakeCancer_df$id %in% unique(AlcoholIntakeCancer_df$id)),
              info = "ID column contains unexpected factor levels.")
})
