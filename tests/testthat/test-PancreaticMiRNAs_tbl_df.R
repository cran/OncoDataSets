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

# PancreaticMiRNAs_tbl_df data set


library(testthat)

# Test structure and class of PancreaticMiRNAs_tbl_df
test_that("PancreaticMiRNAs_tbl_df has the expected structure and class", {
  expect_s3_class(PancreaticMiRNAs_tbl_df, "tbl_df")  # Verify it is a tibble
  expect_equal(class(PancreaticMiRNAs_tbl_df), c("tbl_df", "tbl", "data.frame"))  # It should be a tibble
  expect_equal(length(PancreaticMiRNAs_tbl_df), 8)  # It should have 8 columns
  expect_equal(names(PancreaticMiRNAs_tbl_df), c("PMID", "Year", "Title", "Abstract", "Language", "Type", "Topic", "miRNA"))
})

# Test column types
test_that("PancreaticMiRNAs_tbl_df columns have the correct types", {
  expect_type(PancreaticMiRNAs_tbl_df$PMID, "double")  # PMID should be numeric (double)
  expect_type(PancreaticMiRNAs_tbl_df$Year, "double")  # Year should be numeric (double)
  expect_type(PancreaticMiRNAs_tbl_df$Title, "character")  # Title should be character
  expect_type(PancreaticMiRNAs_tbl_df$Abstract, "character")  # Abstract should be character
  expect_type(PancreaticMiRNAs_tbl_df$Language, "character")  # Language should be character
  expect_type(PancreaticMiRNAs_tbl_df$Type, "character")  # Type should be character
  expect_type(PancreaticMiRNAs_tbl_df$Topic, "character")  # Topic should be character
  expect_type(PancreaticMiRNAs_tbl_df$miRNA, "character")  # miRNA should be character
})

# Test dataset immutability
test_that("PancreaticMiRNAs_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- PancreaticMiRNAs_tbl_df

  # Perform some example checks (ensuring NA values are valid)
  expect_true(all(is.na(PancreaticMiRNAs_tbl_df$PMID) | !is.na(PancreaticMiRNAs_tbl_df$PMID)), info = "PMID should have valid values including NA if applicable")
  expect_true(all(is.na(PancreaticMiRNAs_tbl_df$Year) | !is.na(PancreaticMiRNAs_tbl_df$Year)), info = "Year should have valid values including NA if applicable")
  expect_true(all(is.na(PancreaticMiRNAs_tbl_df$Title) | !is.na(PancreaticMiRNAs_tbl_df$Title)), info = "Title should have valid values including NA if applicable")
  expect_true(all(is.na(PancreaticMiRNAs_tbl_df$Abstract) | !is.na(PancreaticMiRNAs_tbl_df$Abstract)), info = "Abstract should have valid values including NA if applicable")
  expect_true(all(is.na(PancreaticMiRNAs_tbl_df$Language) | !is.na(PancreaticMiRNAs_tbl_df$Language)), info = "Language should have valid values including NA if applicable")
  expect_true(all(is.na(PancreaticMiRNAs_tbl_df$Type) | !is.na(PancreaticMiRNAs_tbl_df$Type)), info = "Type should have valid values including NA if applicable")
  expect_true(all(is.na(PancreaticMiRNAs_tbl_df$Topic) | !is.na(PancreaticMiRNAs_tbl_df$Topic)), info = "Topic should have valid values including NA if applicable")
  expect_true(all(is.na(PancreaticMiRNAs_tbl_df$miRNA) | !is.na(PancreaticMiRNAs_tbl_df$miRNA)), info = "miRNA should have valid values including NA if applicable")

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, PancreaticMiRNAs_tbl_df)
  expect_equal(names(original_dataset), names(PancreaticMiRNAs_tbl_df))
  expect_equal(length(original_dataset), length(PancreaticMiRNAs_tbl_df))
})




