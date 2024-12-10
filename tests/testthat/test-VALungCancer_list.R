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

# VALungCancer_list data set


library(testthat)

test_that("VALungCancer_list loads correctly and has the expected structure", {

  # Check if the object is a list
  expect_true(is.list(VALungCancer_list))

  # Check the length of the list (should be 2)
  expect_equal(length(VALungCancer_list), 2)

  # Check the names of the list elements (should be "X" and "y")
  expect_true(all(names(VALungCancer_list) %in% c("X", "y")))

  # Check the structure of the first list element ("X")
  expect_true(is.numeric(VALungCancer_list$X))

  # Check that "X" has dimnames and they are properly set (i.e., should be a list with two elements)
  expect_true(is.list(dimnames(VALungCancer_list$X)))
  expect_equal(length(dimnames(VALungCancer_list$X)), 2)

  # Check the structure of the second list element ("y")
  expect_true(is.numeric(VALungCancer_list$y))

  # Check that "y" has dimnames and they are properly set (should be a list with NULL and a character vector)
  expect_true(is.null(dimnames(VALungCancer_list$y)[[1]]))
  expect_true(is.character(dimnames(VALungCancer_list$y)[[2]]))

  # Check that the attribute "type" exists in "y" and is of type character
  expect_true("type" %in% names(attributes(VALungCancer_list$y)))
  expect_true(is.character(attributes(VALungCancer_list$y)$type))

})


