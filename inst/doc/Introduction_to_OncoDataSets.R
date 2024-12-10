## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 10,
  fig.height = 6
)

## ----setup--------------------------------------------------------------------
library(OncoDataSets)
library(ggplot2)
library(dplyr)


## ----ggplot_001---------------------------------------------------------------

# Visualizing True Positives (TP) in Pancreatic Cancer Diagnosis
CA19PancreaticCancer_df %>%
  ggplot(aes(x = TP)) +
  geom_histogram(bins = 30, alpha = 0.7, fill = "steelblue") +
  labs(title = "Pancreatic Cancer Diagnosis - True Positives (TP)",
       x = "True Positives (TP)",
       y = "Frequency") +
  theme_minimal()


## ----ggplot2_002--------------------------------------------------------------


ggplot(ColorectalMiRNAs_tbl_df, aes(x = Year, fill = miRNA)) +
  geom_bar(position = "dodge") +
  labs(title = "Distribution miRNA Types Over the Years",
       x = "Year",
       y = "Number of Publications") +
  theme_minimal()


