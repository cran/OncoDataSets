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

# BreastCancerWI_df data set


library(testthat)

# Test dataset structure and class
test_that("BreastCancerWI_df loads correctly and has the expected structure", {
  expect_s3_class(BreastCancerWI_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(BreastCancerWI_df), 569)  # Check number of rows
  expect_equal(ncol(BreastCancerWI_df), 31)  # Check number of columns
  expect_equal(names(BreastCancerWI_df),
               c("diagnosis", "radius_mean", "texture_mean", "perimeter_mean", "area_mean",
                 "smoothness_mean", "compactness_mean", "concavity_mean", "concave_points_mean",
                 "symmetry_mean", "fractal_dimension_mean", "radius_sd", "texture_sd", "perimeter_sd",
                 "area_sd", "smoothness_sd", "compactness_sd", "concavity_sd", "concave_points_sd",
                 "symmetry_sd", "fractal_dimension_sd", "radius_peak", "texture_peak", "perimeter_peak",
                 "area_peak", "smoothness_peak", "compactness_peak", "concavity_peak", "concave_points_peak",
                 "symmetry_peak", "fractal_dimension_peak"))  # Check column names
})

# Test data types of columns
test_that("BreastCancerWI_df has correct column types", {
  expect_true(is.factor(BreastCancerWI_df$diagnosis))  # Check if 'diagnosis' is a factor
  expect_true(is.numeric(BreastCancerWI_df$radius_mean))  # Check if 'radius_mean' is numeric
  expect_true(is.numeric(BreastCancerWI_df$texture_mean))  # Check if 'texture_mean' is numeric
  expect_true(is.numeric(BreastCancerWI_df$perimeter_mean))  # Check if 'perimeter_mean' is numeric
  expect_true(is.numeric(BreastCancerWI_df$area_mean))  # Check if 'area_mean' is numeric
  expect_true(is.numeric(BreastCancerWI_df$smoothness_mean))  # Check if 'smoothness_mean' is numeric
  expect_true(is.numeric(BreastCancerWI_df$compactness_mean))  # Check if 'compactness_mean' is numeric
  expect_true(is.numeric(BreastCancerWI_df$concavity_mean))  # Check if 'concavity_mean' is numeric
  expect_true(is.numeric(BreastCancerWI_df$concave_points_mean))  # Check if 'concave_points_mean' is numeric
  expect_true(is.numeric(BreastCancerWI_df$symmetry_mean))  # Check if 'symmetry_mean' is numeric
  expect_true(is.numeric(BreastCancerWI_df$fractal_dimension_mean))  # Check if 'fractal_dimension_mean' is numeric
  # Repeat this check for all numeric columns in the dataset (radius_sd, texture_sd, etc.)
})

# Test for missing values in critical columns
test_that("BreastCancerWI_df reports NA values in the columns", {
  n_na_diagnosis <- sum(is.na(BreastCancerWI_df$diagnosis))
  n_na_radius_mean <- sum(is.na(BreastCancerWI_df$radius_mean))
  n_na_texture_mean <- sum(is.na(BreastCancerWI_df$texture_mean))
  n_na_perimeter_mean <- sum(is.na(BreastCancerWI_df$perimeter_mean))
  n_na_area_mean <- sum(is.na(BreastCancerWI_df$area_mean))
  n_na_smoothness_mean <- sum(is.na(BreastCancerWI_df$smoothness_mean))
  n_na_compactness_mean <- sum(is.na(BreastCancerWI_df$compactness_mean))
  n_na_concavity_mean <- sum(is.na(BreastCancerWI_df$concavity_mean))
  n_na_concave_points_mean <- sum(is.na(BreastCancerWI_df$concave_points_mean))
  n_na_symmetry_mean <- sum(is.na(BreastCancerWI_df$symmetry_mean))
  n_na_fractal_dimension_mean <- sum(is.na(BreastCancerWI_df$fractal_dimension_mean))

  expect_true(n_na_diagnosis == 0, info = paste("Found", n_na_diagnosis, "NA values in diagnosis"))
  expect_true(n_na_radius_mean == 0, info = paste("Found", n_na_radius_mean, "NA values in radius_mean"))
  expect_true(n_na_texture_mean == 0, info = paste("Found", n_na_texture_mean, "NA values in texture_mean"))
  expect_true(n_na_perimeter_mean == 0, info = paste("Found", n_na_perimeter_mean, "NA values in perimeter_mean"))
  expect_true(n_na_area_mean == 0, info = paste("Found", n_na_area_mean, "NA values in area_mean"))
  expect_true(n_na_smoothness_mean == 0, info = paste("Found", n_na_smoothness_mean, "NA values in smoothness_mean"))
  expect_true(n_na_compactness_mean == 0, info = paste("Found", n_na_compactness_mean, "NA values in compactness_mean"))
  expect_true(n_na_concavity_mean == 0, info = paste("Found", n_na_concavity_mean, "NA values in concavity_mean"))
  expect_true(n_na_concave_points_mean == 0, info = paste("Found", n_na_concave_points_mean, "NA values in concave_points_mean"))
  expect_true(n_na_symmetry_mean == 0, info = paste("Found", n_na_symmetry_mean, "NA values in symmetry_mean"))
  expect_true(n_na_fractal_dimension_mean == 0, info = paste("Found", n_na_fractal_dimension_mean, "NA values in fractal_dimension_mean"))
  # Repeat this check for all other columns in the dataset as needed.
})

# Test for uniqueness in the diagnosis column (since it’s categorical)
test_that("BreastCancerWI_df key columns have appropriate uniqueness", {
  expect_equal(length(unique(BreastCancerWI_df$diagnosis)), 2, info = "'diagnosis' should have 2 unique values")
})




