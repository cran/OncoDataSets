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

# CASP8BreastCancer_df data set


library(testthat)

# Test dataset structure and class
test_that("CASP8BreastCancer_df loads correctly and has the expected structure", {
  expect_s3_class(CASP8BreastCancer_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(CASP8BreastCancer_df), 4)  # Check number of rows
  expect_equal(ncol(CASP8BreastCancer_df), 7)  # Check number of columns
  expect_equal(names(CASP8BreastCancer_df), c("study", "bc.ins.ins", "bc.ins.del", "bc.del.del",
                                              "ct.ins.ins", "ct.ins.del", "ct.del.del"))  # Check column names
})

# Test data types of columns
test_that("CASP8BreastCancer_df has correct column types", {
  expect_true(is.character(CASP8BreastCancer_df$study))  # Check if 'study' is character
  expect_true(is.numeric(CASP8BreastCancer_df$bc.ins.ins))  # Check if 'bc.ins.ins' is numeric
  expect_true(is.numeric(CASP8BreastCancer_df$bc.ins.del))  # Check if 'bc.ins.del' is numeric
  expect_true(is.numeric(CASP8BreastCancer_df$bc.del.del))  # Check if 'bc.del.del' is numeric
  expect_true(is.numeric(CASP8BreastCancer_df$ct.ins.ins))  # Check if 'ct.ins.ins' is numeric
  expect_true(is.numeric(CASP8BreastCancer_df$ct.ins.del))  # Check if 'ct.ins.del' is numeric
  expect_true(is.numeric(CASP8BreastCancer_df$ct.del.del))  # Check if 'ct.del.del' is numeric
})

# Test for missing values in critical columns
test_that("CASP8BreastCancer_df reports NA values in the columns", {
  n_na_study <- sum(is.na(CASP8BreastCancer_df$study))
  n_na_bc_ins_ins <- sum(is.na(CASP8BreastCancer_df$bc.ins.ins))
  n_na_bc_ins_del <- sum(is.na(CASP8BreastCancer_df$bc.ins.del))
  n_na_bc_del_del <- sum(is.na(CASP8BreastCancer_df$bc.del.del))
  n_na_ct_ins_ins <- sum(is.na(CASP8BreastCancer_df$ct.ins.ins))
  n_na_ct_ins_del <- sum(is.na(CASP8BreastCancer_df$ct.ins.del))
  n_na_ct_del_del <- sum(is.na(CASP8BreastCancer_df$ct.del.del))

  expect_true(n_na_study == 0, info = paste("Found", n_na_study, "NA values in study"))
  expect_true(n_na_bc_ins_ins == 0, info = paste("Found", n_na_bc_ins_ins, "NA values in bc.ins.ins"))
  expect_true(n_na_bc_ins_del == 0, info = paste("Found", n_na_bc_ins_del, "NA values in bc.ins.del"))
  expect_true(n_na_bc_del_del == 0, info = paste("Found", n_na_bc_del_del, "NA values in bc.del.del"))
  expect_true(n_na_ct_ins_ins == 0, info = paste("Found", n_na_ct_ins_ins, "NA values in ct.ins.ins"))
  expect_true(n_na_ct_ins_del == 0, info = paste("Found", n_na_ct_ins_del, "NA values in ct.ins.del"))
  expect_true(n_na_ct_del_del == 0, info = paste("Found", n_na_ct_del_del, "NA values in ct.del.del"))
})

