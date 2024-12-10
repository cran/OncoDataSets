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

# BloodStorageProstate_df  data set



library(testthat)

# Test dataset structure and class
test_that("BloodStorageProstate_df loads correctly and has the expected structure", {
  expect_s3_class(BloodStorageProstate_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(BloodStorageProstate_df), 316)  # Check number of rows
  expect_equal(ncol(BloodStorageProstate_df), 20)  # Check number of columns
  expect_equal(names(BloodStorageProstate_df), c("RBC.Age.Group", "Median.RBC.Age", "Age", "AA", "FamHx",
                                                 "PVol", "TVol", "T.Stage", "bGS", "BN+", "OrganConfined",
                                                 "PreopPSA", "PreopTherapy", "Units", "sGS", "AnyAdjTherapy",
                                                 "AdjRadTherapy", "Recurrence", "Censor", "TimeToRecurrence"))  # Check column names
})

# Test data types of columns
test_that("BloodStorageProstate_df has correct column types", {
  expect_true(is.numeric(BloodStorageProstate_df$RBC.Age.Group))  # Check if 'RBC.Age.Group' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$Median.RBC.Age))  # Check if 'Median.RBC.Age' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$Age))  # Check if 'Age' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$AA))  # Check if 'AA' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$FamHx))  # Check if 'FamHx' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$PVol))  # Check if 'PVol' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$TVol))  # Check if 'TVol' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$T.Stage))  # Check if 'T.Stage' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$bGS))  # Check if 'bGS' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$`BN+`))  # Check if 'BN+' is numeric (use backticks)
  expect_true(is.numeric(BloodStorageProstate_df$OrganConfined))  # Check if 'OrganConfined' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$PreopPSA))  # Check if 'PreopPSA' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$PreopTherapy))  # Check if 'PreopTherapy' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$Units))  # Check if 'Units' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$sGS))  # Check if 'sGS' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$AnyAdjTherapy))  # Check if 'AnyAdjTherapy' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$AdjRadTherapy))  # Check if 'AdjRadTherapy' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$Recurrence))  # Check if 'Recurrence' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$Censor))  # Check if 'Censor' is numeric
  expect_true(is.numeric(BloodStorageProstate_df$TimeToRecurrence))  # Check if 'TimeToRecurrence' is numeric
})

# Test for missing values in critical columns
test_that("BloodStorageProstate_df reports NA values in the columns", {
  # Instead of expecting 0 NAs, we expect the NAs to be allowed since they are valid
  expect_true(sum(is.na(BloodStorageProstate_df$PVol)) <= 9, info = paste("Found", sum(is.na(BloodStorageProstate_df$PVol)), "NA values in PVol"))
  expect_true(sum(is.na(BloodStorageProstate_df$TVol)) <= 6, info = paste("Found", sum(is.na(BloodStorageProstate_df$TVol)), "NA values in TVol"))
  expect_true(sum(is.na(BloodStorageProstate_df$T.Stage)) <= 13, info = paste("Found", sum(is.na(BloodStorageProstate_df$T.Stage)), "NA values in T.Stage"))
  expect_true(sum(is.na(BloodStorageProstate_df$bGS)) <= 2, info = paste("Found", sum(is.na(BloodStorageProstate_df$bGS)), "NA values in bGS"))
  expect_true(sum(is.na(BloodStorageProstate_df$PreopPSA)) <= 3, info = paste("Found", sum(is.na(BloodStorageProstate_df$PreopPSA)), "NA values in PreopPSA"))
  expect_true(sum(is.na(BloodStorageProstate_df$TimeToRecurrence)) <= 1, info = paste("Found", sum(is.na(BloodStorageProstate_df$TimeToRecurrence)), "NA values in TimeToRecurrence"))
})

# Test to verify dataset immutability
test_that("BloodStorageProstate_df remains unchanged after tests", {
  original_dataset <- BloodStorageProstate_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(BloodStorageProstate_df$RBC.Age.Group))  # Example test
  sum(is.na(BloodStorageProstate_df$AA))  # Example test

  # Check if the dataset remains identical after the tests
  expect_identical(original_dataset, BloodStorageProstate_df)
  expect_equal(nrow(original_dataset), nrow(BloodStorageProstate_df))
  expect_equal(ncol(original_dataset), ncol(BloodStorageProstate_df))
  expect_equal(names(original_dataset), names(BloodStorageProstate_df))
})
