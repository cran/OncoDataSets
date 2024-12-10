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

# ChildCancer_df data set

library(testthat)

# Test column names
test_that("ChildCancer_df has correct column names", {
  expect_equal(
    names(ChildCancer_df),
    c("X", "U", "V", "ICCGroup", "Status", "SurvTime", "Residence", "Sex"),
    info = "Column names should match the expected names"
  )
})

# Test column types
test_that("ChildCancer_df has correct column types", {
  expect_true(is.numeric(ChildCancer_df$X), "X should be numeric")
  expect_true(is.numeric(ChildCancer_df$U), "U should be numeric")
  expect_true(is.numeric(ChildCancer_df$V), "V should be numeric")
  expect_true(is.numeric(ChildCancer_df$ICCGroup), "ICCGroup should be numeric")
  expect_true(is.numeric(ChildCancer_df$Status), "Status should be numeric")
  expect_true(is.numeric(ChildCancer_df$SurvTime), "SurvTime should be numeric")
  expect_true(is.numeric(ChildCancer_df$Residence), "Residence should be numeric")
  expect_true(is.numeric(ChildCancer_df$Sex), "Sex should be numeric")
})

# Allow missing values in critical columns
test_that("ChildCancer_df critical columns may have missing values", {
  expect_true(any(!is.na(ChildCancer_df$ICCGroup)), "'ICCGroup' column should have at least some non-missing values")
  expect_true(any(!is.na(ChildCancer_df$Status)), "'Status' column should have at least some non-missing values")
  expect_true(any(!is.na(ChildCancer_df$SurvTime)), "'SurvTime' column should have at least some non-missing values")
})

# Test value ranges for numerical columns
test_that("ChildCancer_df numerical columns have valid ranges", {
  expect_true(all(ChildCancer_df$X >= 0, na.rm = TRUE), "X should be non-negative")
  expect_true(all(ChildCancer_df$SurvTime >= 0, na.rm = TRUE), "SurvTime should be non-negative")
  expect_true(any(!is.na(ChildCancer_df$U)), "U column should not have all missing values")
})

# Allow non-unique values in column X
test_that("ChildCancer_df key columns may have duplicates", {
  expect_true(any(duplicated(ChildCancer_df$X)), "X column may contain duplicate values")
})
