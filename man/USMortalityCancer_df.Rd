% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-documentation.R
\name{USMortalityCancer_df}
\alias{USMortalityCancer_df}
\title{US Mortality Rates by Cause (Cancer) and Gender}
\format{
A data frame with 40 observations and 5 variables:
\describe{
  \item{Status}{Rural or urban status (factor with 2 levels).}
  \item{Sex}{Gender of the individual (factor with 2 levels).}
  \item{Cause}{Cause of death (factor with 10 levels).}
  \item{Rate}{Mortality rate (numeric).}
  \item{SE}{Standard error of the mortality rate (numeric).}
}
}
\source{
Data taken from the lattice package.
This dataset is based on the study by the Rural Health Reform Policy Research Center: *Exploring Rural and Urban Mortality Differences*, August 2015, Bethesda, MD.
Available at \url{https://ruralhealth.und.edu/projects/health-reform-policy-research-center/rural-urban-mortality}.
}
\usage{
data(USMortalityCancer_df)
}
\description{
This dataset, USMortalityCancer_df, is a data frame containing mortality rates across all ages in the USA (Nation-wide) by cause of death, sex, and rural/urban status, recorded from 2011 to 2013.
It includes national aggregate rates and region-wise rates for each administrative region under the Department of Health and Human Services (HHS).
The dataset consists of 40 observations with 5 variables.
}
\details{
The dataset name has been kept as 'USMortalityCancer_df' to avoid confusion with other datasets in the R ecosystem.
This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
}
