% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-documentation.R
\name{ProstateMethylation_df}
\alias{ProstateMethylation_df}
\title{DNA Methylation Data from Patients Prostate Cancer}
\format{
A data frame with 5067 observations and 9 variables:
\describe{
  \item{IlmnID}{Unique identifier for the methylation probe (character).}
  \item{FFPE_benign_1}{Beta methylation value for benign tissue, patient 1 (numeric).}
  \item{FFPE_benign_2}{Beta methylation value for benign tissue, patient 2 (numeric).}
  \item{FFPE_benign_3}{Beta methylation value for benign tissue, patient 3 (numeric).}
  \item{FFPE_benign_4}{Beta methylation value for benign tissue, patient 4 (numeric).}
  \item{FFPE_tumour_1}{Beta methylation value for tumor tissue, patient 1 (numeric).}
  \item{FFPE_tumour_2}{Beta methylation value for tumor tissue, patient 2 (numeric).}
  \item{FFPE_tumour_3}{Beta methylation value for tumor tissue, patient 3 (numeric).}
  \item{FFPE_tumour_4}{Beta methylation value for tumor tissue, patient 4 (numeric).}
}
}
\source{
Data taken from the betaclust package.
}
\usage{
data(ProstateMethylation_df)
}
\description{
This dataset, ProstateMethylation_df, is a data frame containing pre-processed beta methylation values collected from two sample types (benign and tumor tissue) of 4 patients diagnosed with prostate cancer. The dataset can be used for analyses of methylation patterns in benign versus tumor tissues in prostate cancer cases.
}
\details{
The dataset name has been kept as ProstateMethylation_df to avoid confusion with other datasets in the R ecosystem.
This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
}
