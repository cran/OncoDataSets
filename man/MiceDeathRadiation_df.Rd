% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-documentation.R
\name{MiceDeathRadiation_df}
\alias{MiceDeathRadiation_df}
\title{Mice Deaths from Radiation}
\format{
A data frame with 177 observations and 4 variables:
\describe{
  \item{type}{Type of environment (factor with 2 levels: conventional or germ-free).}
  \item{cause}{Cause of death (factor with 3 levels: thymic lymphoma, reticulum cell sarcoma, or other).}
  \item{status}{Survival status (numeric).}
  \item{y}{Time to death in days (numeric).}
}
}
\source{
Data taken from the SMPracticals package.
}
\usage{
data(MiceDeathRadiation_df)
}
\description{
This dataset, MiceDeathRadiation_df, is a data frame containing data on deaths of RFM male mice exposed to 300 rads of x-radiation at 5–6 weeks of age. The dataset records the causes of death, which include thymic lymphoma, reticulum cell sarcoma, and other causes. Additionally, it distinguishes between mice kept in a conventional environment and those in a germ-free environment.
}
\details{
The dataset name has been kept as 'MiceDeathRadiation_df' to avoid confusion with other datasets in the R ecosystem.
This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
}
