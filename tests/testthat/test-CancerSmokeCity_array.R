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

# CancerSmokeCity_array  data set


library(testthat)

test_that("CancerSmokeCity_array loads correctly and has the expected structure", {

  # Check if the object is an array using is.array() instead of expect_s3_class()
  expect_true(is.array(CancerSmokeCity_array))

  # Check the length of the array
  expect_equal(length(CancerSmokeCity_array), 32)

  # Check the dimensions of the array (we expect 3 dimensions)
  expect_equal(length(dim(CancerSmokeCity_array)), 3)

  # Check if the dimnames are correctly set (expecting lists for Smoking, Lung, City)
  expect_true(all(names(dimnames(CancerSmokeCity_array)) %in% c("Smoking", "Lung", "City")))

  # Optionally, check the specific values for dimnames to ensure they are valid (if known)
  expect_type(dimnames(CancerSmokeCity_array)$Smoking, "character")
  expect_type(dimnames(CancerSmokeCity_array)$Lung, "character")
  expect_type(dimnames(CancerSmokeCity_array)$City, "character")
})
