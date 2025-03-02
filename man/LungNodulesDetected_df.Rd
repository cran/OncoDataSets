% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-documentation.R
\name{LungNodulesDetected_df}
\alias{LungNodulesDetected_df}
\title{Incidental or Screen-Detected Lung Nodules}
\format{
A data frame with 999 observations and 8 variables:
\describe{
  \item{sex}{Gender of the patient, represented as a factor with 2 levels (Male, Female).}
  \item{age}{Age of the patient (numeric).}
  \item{num.annotated}{Number of annotated nodules (numeric).}
  \item{location}{Location of the nodule, represented as a factor with 6 levels.}
  \item{spiculate}{Whether the nodule is spiculated, represented as a factor with 2 levels (Yes, No).}
  \item{smoke.status}{Smoking status of the patient, represented as a factor with 5 levels.}
  \item{diameter}{Diameter of the nodule (numeric).}
  \item{malignant}{Malignancy status of the nodule (numeric).}
}
}
\source{
Data taken from the R4HCR package.
The dataset was collected from patients with pulmonary nodules detected on CT chest scans, aged 18 years or older, from 3 academic centers in the UK.
}
\usage{
data(LungNodulesDetected_df)
}
\description{
This dataset, LungNodulesDetected_df, is a data frame containing data on incidental or screen-detected lung nodules. The data includes information such as patient demographics, smoking status, nodule characteristics, and whether the nodule is malignant. The dataset was collected from patients with pulmonary nodules of up to 15mm detected on routine CT chest scans, aged 18 years or older, from 3 academic centers in the UK.
}
\details{
The dataset name has been kept as 'LungNodulesDetected_df' to avoid confusion with other datasets in the R ecosystem.
This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
}
