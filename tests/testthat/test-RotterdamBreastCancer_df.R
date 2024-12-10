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

# RotterdamBreastCancer_df  data set



library(testthat)

# Test dataset structure and class
test_that("RotterdamBreastCancer_df loads correctly and has the expected structure", {
  expect_s3_class(RotterdamBreastCancer_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(RotterdamBreastCancer_df), 2982)  # Check number of rows
  expect_equal(ncol(RotterdamBreastCancer_df), 15)  # Check number of columns
  expect_equal(names(RotterdamBreastCancer_df), c("pid", "year", "age", "meno", "size", "grade",
                                                  "nodes", "pgr", "er", "hormon", "chemo",
                                                  "rtime", "recur", "dtime", "death"))  # Check column names
})

# Test data types of columns
test_that("RotterdamBreastCancer_df has correct column types", {
  expect_true(is.integer(RotterdamBreastCancer_df$pid))  # Check if 'pid' is integer
  expect_true(is.integer(RotterdamBreastCancer_df$year))  # Check if 'year' is integer
  expect_true(is.integer(RotterdamBreastCancer_df$age))  # Check if 'age' is integer
  expect_true(is.integer(RotterdamBreastCancer_df$meno))  # Check if 'meno' is integer
  expect_true(is.factor(RotterdamBreastCancer_df$size))  # Check if 'size' is a factor
  expect_true(is.integer(RotterdamBreastCancer_df$grade))  # Check if 'grade' is integer
  expect_true(is.integer(RotterdamBreastCancer_df$nodes))  # Check if 'nodes' is integer
  expect_true(is.integer(RotterdamBreastCancer_df$pgr))  # Check if 'pgr' is integer
  expect_true(is.integer(RotterdamBreastCancer_df$er))  # Check if 'er' is integer
  expect_true(is.integer(RotterdamBreastCancer_df$hormon))  # Check if 'hormon' is integer
  expect_true(is.integer(RotterdamBreastCancer_df$chemo))  # Check if 'chemo' is integer
  expect_true(is.numeric(RotterdamBreastCancer_df$rtime))  # Check if 'rtime' is numeric
  expect_true(is.integer(RotterdamBreastCancer_df$recur))  # Check if 'recur' is integer
  expect_true(is.numeric(RotterdamBreastCancer_df$dtime))  # Check if 'dtime' is numeric
  expect_true(is.integer(RotterdamBreastCancer_df$death))  # Check if 'death' is integer
})

# Test for missing values in critical columns
test_that("RotterdamBreastCancer_df reports NA values in the columns", {
  n_na_pid <- sum(is.na(RotterdamBreastCancer_df$pid))
  n_na_year <- sum(is.na(RotterdamBreastCancer_df$year))
  n_na_age <- sum(is.na(RotterdamBreastCancer_df$age))
  n_na_meno <- sum(is.na(RotterdamBreastCancer_df$meno))
  n_na_size <- sum(is.na(RotterdamBreastCancer_df$size))
  n_na_grade <- sum(is.na(RotterdamBreastCancer_df$grade))
  n_na_nodes <- sum(is.na(RotterdamBreastCancer_df$nodes))
  n_na_pgr <- sum(is.na(RotterdamBreastCancer_df$pgr))
  n_na_er <- sum(is.na(RotterdamBreastCancer_df$er))
  n_na_hormon <- sum(is.na(RotterdamBreastCancer_df$hormon))
  n_na_chemo <- sum(is.na(RotterdamBreastCancer_df$chemo))
  n_na_rtime <- sum(is.na(RotterdamBreastCancer_df$rtime))
  n_na_recur <- sum(is.na(RotterdamBreastCancer_df$recur))
  n_na_dtime <- sum(is.na(RotterdamBreastCancer_df$dtime))
  n_na_death <- sum(is.na(RotterdamBreastCancer_df$death))

  expect_true(n_na_pid == 0, info = paste("Found", n_na_pid, "NA values in pid"))
  expect_true(n_na_year == 0, info = paste("Found", n_na_year, "NA values in year"))
  expect_true(n_na_age == 0, info = paste("Found", n_na_age, "NA values in age"))
  expect_true(n_na_meno == 0, info = paste("Found", n_na_meno, "NA values in meno"))
  expect_true(n_na_size == 0, info = paste("Found", n_na_size, "NA values in size"))
  expect_true(n_na_grade == 0, info = paste("Found", n_na_grade, "NA values in grade"))
  expect_true(n_na_nodes == 0, info = paste("Found", n_na_nodes, "NA values in nodes"))
  expect_true(n_na_pgr == 0, info = paste("Found", n_na_pgr, "NA values in pgr"))
  expect_true(n_na_er == 0, info = paste("Found", n_na_er, "NA values in er"))
  expect_true(n_na_hormon == 0, info = paste("Found", n_na_hormon, "NA values in hormon"))
  expect_true(n_na_chemo == 0, info = paste("Found", n_na_chemo, "NA values in chemo"))
  expect_true(n_na_rtime == 0, info = paste("Found", n_na_rtime, "NA values in rtime"))
  expect_true(n_na_recur == 0, info = paste("Found", n_na_recur, "NA values in recur"))
  expect_true(n_na_dtime == 0, info = paste("Found", n_na_dtime, "NA values in dtime"))
  expect_true(n_na_death == 0, info = paste("Found", n_na_death, "NA values in death"))
})

# Test for valid value ranges in the columns
test_that("RotterdamBreastCancer_df has valid value ranges", {
  # Correct validation for 'size' variable based on actual levels in the data
  size_values <- levels(RotterdamBreastCancer_df$size)
  expect_true(all(size_values %in% c("<=20", "20-50", ">50")),
              info = paste("Invalid values found in 'size'. Found:", paste(size_values, collapse = ", ")))

  # Test for 'meno' variable - should have specific values (e.g., 0, 1)
  meno_values <- unique(RotterdamBreastCancer_df$meno)
  expect_true(all(meno_values %in% c(0, 1)),
              info = paste("Invalid values found in 'meno'. Found:", paste(meno_values, collapse = ", ")))

  # Test for other columns (if needed)
  # Example: ensure 'age' is a positive integer
  expect_true(all(RotterdamBreastCancer_df$age > 0), info = "Some 'age' values are non-positive.")
})

# Test to verify dataset immutability
test_that("RotterdamBreastCancer_df remains unchanged after tests", {
  original_dataset <- RotterdamBreastCancer_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(RotterdamBreastCancer_df$pid))  # Ensure no NAs in 'pid'
  sum(is.na(RotterdamBreastCancer_df$year))  # Ensure no NAs in 'year'
  sum(is.na(RotterdamBreastCancer_df$age))  # Ensure no NAs in 'age'
  sum(is.na(RotterdamBreastCancer_df$meno))  # Ensure no NAs in 'meno'
  sum(is.na(RotterdamBreastCancer_df$size))  # Ensure no NAs in 'size'
  sum(is.na(RotterdamBreastCancer_df$grade))  # Ensure no NAs in 'grade'
  sum(is.na(RotterdamBreastCancer_df$nodes))  # Ensure no NAs in 'nodes'
  sum(is.na(RotterdamBreastCancer_df$pgr))  # Ensure no NAs in 'pgr'
  sum(is.na(RotterdamBreastCancer_df$er))  # Ensure no NAs in 'er'
  sum(is.na(RotterdamBreastCancer_df$hormon))  # Ensure no NAs in 'hormon'
  sum(is.na(RotterdamBreastCancer_df$chemo))  # Ensure no NAs in 'chemo'
  sum(is.na(RotterdamBreastCancer_df$rtime))  # Ensure no NAs in 'rtime'
  sum(is.na(RotterdamBreastCancer_df$recur))  # Ensure no NAs in 'recur'
  sum(is.na(RotterdamBreastCancer_df$dtime))  # Ensure no NAs in 'dtime'
  sum(is.na(RotterdamBreastCancer_df$death))  # Ensure no NAs in 'death'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, RotterdamBreastCancer_df)
  expect_equal(nrow(original_dataset), nrow(RotterdamBreastCancer_df))
  expect_equal(ncol(original_dataset), ncol(RotterdamBreastCancer_df))
  expect_equal(names(original_dataset), names(RotterdamBreastCancer_df))
})
