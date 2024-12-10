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


#' Cancer in Dogs and Exposure to 2,4-D Herbicide
#'
#' This dataset, cancer_in_dogs_tbl_df, is a tibble containing information from a study
#' conducted in 1994. The study aimed to determine whether there is an increased risk
#' of cancer in dogs exposed to the herbicide 2,4-Dichlorophenoxyacetic acid (2,4-D).
#' It includes data from 491 dogs diagnosed with cancer (case group) and 945 dogs without cancer
#' (control group).
#'
#' The dataset name has been kept as 'cancer_in_dogs_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' OncoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name cancer_in_dogs_tbl_df
#' @format A tibble with 1,436 observations and 2 variables:
#' \describe{
#'   \item{order}{Indicates whether the dog belongs to the "case" group (with cancer) or the
#'   "control" group (without cancer) (factor with 2 levels).}
#'   \item{response}{Indicates the dog's exposure to the herbicide 2,4-D, with levels such as
#'   "exposed" or "not exposed" (factor with 2 levels).}
#' }
#' @source Data taken from the openintro package. Original study:
#' Hayes HM, Tarone RE, Cantor KP, Jessen CR, McCurnin DM, and Richardson RC. 1991.
#' Case-Control Study of Canine Malignant Lymphoma: Positive Association With Dog Owner's Use
#' of 2,4-Dichlorophenoxyacetic Acid Herbicides. *Journal of the National Cancer Institute*,
#' 83(17):1226-1231.
#' @usage data(cancer_in_dogs_tbl_df)
#' @export
load("data/cancer_in_dogs_tbl_df.rda")
NULL


#' Survival from Malignant Melanoma
#'
#' This dataset, Melanoma_df, is a data frame containing information about 205 patients
#' with malignant melanoma (a type of skin cancer) who underwent a radical operation at
#' Odense University Hospital, Denmark, between 1962 and 1977. Patients were followed up
#' until the end of 1977. By that time, 134 patients were still alive, and 71 had died
#' (57 due to cancer and 14 from other causes). This dataset provides detailed clinical
#' and demographic information for studying malignant melanoma outcomes.
#'
#' The dataset name has been kept as 'Melanoma_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' OncoDataSets package and assists users in identifying its specific characteristics.
#' The suffix '_df' indicates that the dataset is a data frame. The original content
#' has not been modified in any way.
#'
#' @name Melanoma_df
#' @format A data frame with 205 observations and 7 variables:
#' \describe{
#'   \item{time}{Follow-up time in days (integer).}
#'   \item{status}{Patient's status at the end of the study: 1 = alive, 2 = dead from cancer, 3 = dead from other causes (integer).}
#'   \item{sex}{Sex of the patient: 1 = male, 2 = female (integer).}
#'   \item{age}{Age of the patient at the time of surgery (integer).}
#'   \item{year}{Year of surgery (integer).}
#'   \item{thickness}{Tumor thickness in millimeters (numeric).}
#'   \item{ulcer}{Presence of ulceration: 1 = no, 2 = yes (integer).}
#' }
#' @source Data taken from the MASS package. Original study conducted at Odense University Hospital, Denmark.
#' @usage data(Melanoma_df)
#' @export
load("data/Melanoma_df.rda")
NULL


#' Childhood Cancer Data from North Portugal
#'
#' This dataset, ChildCancer_df, is a data frame containing information on 406 children
#' diagnosed with cancer between January 1, 1999, and December 31, 2003, in the region of
#' North Portugal. The dataset includes complete records on the age at diagnosis,
#' demographic details, and survival information. Due to the interval sampling, the age at
#' diagnosis is doubly truncated by the time from birth to the beginning and end of the study.
#'
#' The dataset name has been kept as 'ChildCancer_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' OncoDataSets package and assists users in identifying its specific characteristics. The
#' suffix '_df' indicates that the dataset is a data frame. The original content has not been
#' modified in any way.
#'
#' @name ChildCancer_df
#' @format A data frame with 406 observations and 8 variables:
#' \describe{
#'   \item{X}{Unspecified numerical variable (numeric).}
#'   \item{U}{Unspecified numerical variable (numeric).}
#'   \item{V}{Unspecified numerical variable (numeric).}
#'   \item{ICCGroup}{Cancer group classification (numeric).}
#'   \item{Status}{Survival status of the child: 1 = alive, 2 = deceased (numeric).}
#'   \item{SurvTime}{Survival time in days (numeric).}
#'   \item{Residence}{Residence type of the child: 1 = urban, 2 = rural (numeric).}
#'   \item{Sex}{Sex of the child: 1 = male, 2 = female (numeric).}
#' }
#' @source Data taken from the DTDA package. The childhood cancer data were gathered from
#' the IPO (Registo Oncológico do Norte) service in North Portugal, kindly provided by
#' Doctor Maria José Bento.
#' @usage data(ChildCancer_df)
#' @export
load("data/ChildCancer_df.rda")
NULL


#' Small Cell Lung Cancer Data
#'
#' This dataset, SmallCellLung_tbl_df, is a tibble containing information on the entry age
#' and survival time of 121 patients diagnosed with small cell lung cancer (SCLC) under two
#' different treatment regimens. The dataset provides key insights for survival analysis and
#' treatment comparisons in patients with SCLC.
#'
#' The dataset name has been kept as 'SmallCellLung_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' OncoDataSets package and assists users in identifying its specific characteristics. The suffix
#' 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified in any way.
#'
#' @name SmallCellLung_tbl_df
#' @format A tibble with 121 observations and 3 variables:
#' \describe{
#'   \item{treatment}{Treatment group of the patient (factor with 2 levels).}
#'   \item{age}{Entry age of the patient at the start of treatment (integer).}
#'   \item{survival}{Survival time of the patient in days (integer).}
#' }
#' @source Data taken from the BSDA package. Originally published in:
#' Ying, Z., Jung, S., Wei, L. 1995. Survival Analysis with Median Regression Models.
#' @usage data(SmallCellLung_tbl_df)
#' @export
load("data/SmallCellLung_tbl_df.rda")
NULL


#' Breast Cancer Wisconsin (Diagnostic)
#'
#' This dataset, BreastCancerWI_df, is a data frame containing diagnostic information
#' for 569 patients with breast cancer. The data includes features computed from
#' digitized images of fine needle aspirates (FNA) of breast masses, as well as
#' a diagnosis label indicating whether the mass is malignant or benign.
#'
#' The dataset name has been kept as 'BreastCancerWI_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' OncoDataSets package and assists users in identifying its specific characteristics.
#' The original content has not been modified in any way.
#'
#' @name BreastCancerWI_df
#' @format A data frame with 569 observations and 31 variables:
#' \describe{
#'   \item{diagnosis}{Diagnosis of the breast mass: malignant or benign (factor with 2 levels).}
#'   \item{radius_mean}{Mean radius of the mass (numeric).}
#'   \item{texture_mean}{Mean texture of the mass (numeric).}
#'   \item{perimeter_mean}{Mean perimeter of the mass (numeric).}
#'   \item{area_mean}{Mean area of the mass (numeric).}
#'   \item{smoothness_mean}{Mean smoothness of the mass (numeric).}
#'   \item{compactness_mean}{Mean compactness of the mass (numeric).}
#'   \item{concavity_mean}{Mean concavity of the mass (numeric).}
#'   \item{concave_points_mean}{Mean number of concave points on the mass contour (numeric).}
#'   \item{symmetry_mean}{Mean symmetry of the mass (numeric).}
#'   \item{fractal_dimension_mean}{Mean fractal dimension of the mass (numeric).}
#'   \item{radius_sd}{Standard deviation of the radius (numeric).}
#'   \item{texture_sd}{Standard deviation of the texture (numeric).}
#'   \item{perimeter_sd}{Standard deviation of the perimeter (numeric).}
#'   \item{area_sd}{Standard deviation of the area (numeric).}
#'   \item{smoothness_sd}{Standard deviation of the smoothness (numeric).}
#'   \item{compactness_sd}{Standard deviation of the compactness (numeric).}
#'   \item{concavity_sd}{Standard deviation of the concavity (numeric).}
#'   \item{concave_points_sd}{Standard deviation of the number of concave points (numeric).}
#'   \item{symmetry_sd}{Standard deviation of the symmetry (numeric).}
#'   \item{fractal_dimension_sd}{Standard deviation of the fractal dimension (numeric).}
#'   \item{radius_peak}{Worst (peak) value of the radius (numeric).}
#'   \item{texture_peak}{Worst (peak) value of the texture (numeric).}
#'   \item{perimeter_peak}{Worst (peak) value of the perimeter (numeric).}
#'   \item{area_peak}{Worst (peak) value of the area (numeric).}
#'   \item{smoothness_peak}{Worst (peak) value of the smoothness (numeric).}
#'   \item{compactness_peak}{Worst (peak) value of the compactness (numeric).}
#'   \item{concavity_peak}{Worst (peak) value of the concavity (numeric).}
#'   \item{concave_points_peak}{Worst (peak) number of concave points (numeric).}
#'   \item{symmetry_peak}{Worst (peak) value of the symmetry (numeric).}
#'   \item{fractal_dimension_peak}{Worst (peak) value of the fractal dimension (numeric).}
#' }
#' @source Data taken from the cases package. Original documentation available at:
#' https://archive.ics.uci.edu/ml/datasets/breast+cancer+wisconsin+(diagnostic).
#' @usage data(BreastCancerWI_df)
#' @export
load("data/BreastCancerWI_df.rda")
NULL


#' Women with Breast Cancer Study
#'
#' This dataset, WBreastCancer_tbl_df, is a tibble containing data from a study among
#' women with breast cancer. The dataset includes clinical and demographic variables
#' for 1207 patients, providing valuable insights for breast cancer research and analysis.
#'
#' The dataset name has been kept as 'WBreastCancer_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' OncoDataSets package and assists users in identifying its specific characteristics.
#' The original content has not been modified in any way.
#'
#' @name WBreastCancer_tbl_df
#' @format A tibble with 1207 observations and 9 variables:
#' \describe{
#'   \item{id}{Unique identifier for each patient (numeric).}
#'   \item{time}{Time to the event or censoring (numeric).}
#'   \item{status}{Event status: 1 if the event occurred, 0 if censored (numeric).}
#'   \item{er}{Estrogen receptor status (numeric).}
#'   \item{age}{Age of the patient at the time of diagnosis (numeric).}
#'   \item{histgrad}{Histological grade of the tumor (numeric).}
#'   \item{ln_yesno}{Presence of lymph nodes: 1 if positive, 0 if negative (numeric).}
#'   \item{pathsd}{Pathological stage of the disease (numeric).}
#'   \item{pr}{Progesterone receptor status (numeric).}
#' }
#' @source Data taken from the psfmi package.
#' @usage data(WBreastCancer_tbl_df)
#' @export
load("data/WBreastCancer_tbl_df.rda")
NULL



#' CASP8 Polymorphism and Breast Cancer Risk
#'
#' This dataset, CASP8BreastCancer_df, is a data frame containing results from 4 case-control studies
#' examining the association between the CASP8 -652 6N del promoter polymorphism and breast cancer risk.
#' The dataset includes information on the presence or absence of the polymorphism in both cases (breast cancer patients)
#' and controls, with different genotypic combinations analyzed.
#'
#' The dataset name has been kept as 'CASP8BreastCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The original content has not been modified in any way.
#'
#' @name CASP8BreastCancer_df
#' @format A data frame with 4 observations and 7 variables:
#' \describe{
#'   \item{study}{Study identifier (character).}
#'   \item{bc.ins.ins}{Number of breast cancer cases with the ins/ins genotype (integer).}
#'   \item{bc.ins.del}{Number of breast cancer cases with the ins/del genotype (integer).}
#'   \item{bc.del.del}{Number of breast cancer cases with the del/del genotype (integer).}
#'   \item{ct.ins.ins}{Number of control cases with the ins/ins genotype (integer).}
#'   \item{ct.ins.del}{Number of control cases with the ins/del genotype (integer).}
#'   \item{ct.del.del}{Number of control cases with the del/del genotype (integer).}
#' }
#' @source Data taken from the metadat package.
#' Frank, B., Rigas, S. H., Bermejo, J. L., Wiestler, M., Wagner, K., Hemminki, K., Reed, M. W., Sutter, C., Wappenschmidt, B.,
#' Balasubramanian, S. P., Meindl, A., Kiechle, M., Bugert, P., Schmutzler, R. K., Bartram, C. R., Justenhoven, C., Ko, Y.-D.,
#' Brüning, T., Brauch, H., Hamann, U., Pharoah, P. P. D., Dunning, A. M., Pooley, K. A., Easton, D. F., Cox, A. & Burwinkel, B.
#' (2008). The CASP8 -652 6N del promoter polymorphism and breast cancer risk: A multicenter study. Breast Cancer Research and
#' Treatment, 111(1), 139-144. https://doi.org/10.1007/s10549-007-9752-z
#' @usage data(CASP8BreastCancer_df)
#' @export
load("data/CASP8BreastCancer_df.rda")
NULL



#' Passive Smoking's Lung Cancer Threat in Women
#'
#' This dataset, LungCancerETS_df, is a data frame containing results from 37 studies on the risk of lung cancer in women
#' exposed to environmental tobacco smoke (ETS) from their smoking spouse. The dataset includes data from both cohort and
#' case-control studies, focusing on women who are lifelong nonsmokers but have been exposed to ETS.
#'
#' The dataset name has been kept as 'LungCancerETS_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name LungCancerETS_df
#' @format A data frame with 37 observations and 11 variables:
#' \describe{
#'   \item{study}{Study identifier (integer).}
#'   \item{author}{Author(s) of the study (character).}
#'   \item{year}{Year of publication (integer).}
#'   \item{country}{Country where the study was conducted (character).}
#'   \item{design}{Design of the study (e.g., cohort or case-control) (character).}
#'   \item{cases}{Number of cases in the study (integer).}
#'   \item{or}{Odds ratio estimate (numeric).}
#'   \item{or.lb}{Lower bound of the odds ratio confidence interval (numeric).}
#'   \item{or.ub}{Upper bound of the odds ratio confidence interval (numeric).}
#'   \item{yi}{Effect size estimate (numeric).}
#'   \item{vi}{Variance of the effect size estimate (numeric).}
#' }
#' @source Data taken from the metadat package.
#' Hackshaw, A. K., Law, M. R., & Wald, N. J. (1997). The accumulated evidence on lung cancer and environmental tobacco smoke.
#' British Medical Journal, 315(7114), 980-988. https://doi.org/10.1136/bmj.315.7114.980
#' Hackshaw, A. K. (1998). Lung cancer and passive smoking. Statistical Methods in Medical Research, 7(2), 119-136.
#' https://doi.org/10.1177/096228029800700203
#' @usage data(LungCancerETS_df)
#' @export
load("data/LungCancerETS_df.rda")
NULL


#' Head and Neck Squamous-Cell Carcinoma Treatment
#'
#' This dataset, HeadNeckCarcinoma_df, is a data frame containing results from 65 trials examining mortality risk in patients with nonmetastatic head and neck squamous-cell carcinoma receiving either locoregional treatment plus chemotherapy versus locoregional treatment alone.
#' The dataset provides the observed minus expected number of deaths and corresponding variances in the locoregional treatment plus chemotherapy group.
#'
#' The dataset name has been kept as 'HeadNeckCarcinoma_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name HeadNeckCarcinoma_df
#' @format A data frame with 65 observations and 5 variables:
#' \describe{
#'   \item{id}{Trial identifier (numeric).}
#'   \item{trial}{Name of the trial (character).}
#'   \item{OmE}{Observed minus expected number of deaths (numeric).}
#'   \item{V}{Variance of the observed minus expected deaths (numeric).}
#'   \item{grp}{Treatment group (integer).}
#' }
#' @source Data taken from the metadat package.
#' Pignon, J. P., Bourhis, J., Domenge, C., & Designe, L. (2000). Chemotherapy added to locoregional treatment for head and neck squamous-cell carcinoma: Three meta-analyses of updated individual data.
#' Lancet, 355(9208), 949-955. https://doi.org/10.1016/S0140-6736(00)90011-4
#' @usage data(HeadNeckCarcinoma_df)
#' @export
load("data/HeadNeckCarcinoma_df.rda")
NULL


#' Leukemia Remission Survival Times Placebo-Controlled RCT
#'
#' This dataset, LeukemiaSurvival_df, is a data frame containing remission survival times of 42 leukemia patients enrolled in a placebo-controlled randomized controlled trial (RCT).
#' The dataset includes information on the time to remission, patient status, sex, white blood cell count (log-transformed), and treatment regimen.
#'
#' The dataset name has been kept as 'LeukemiaSurvival_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name LeukemiaSurvival_df
#' @format A data frame with 42 observations and 5 variables:
#' \describe{
#'   \item{time}{Time to remission in days (integer).}
#'   \item{status}{Patient status (1 for event, 0 for censored) (integer).}
#'   \item{sex}{Gender of the patient (numeric, 1 for male, 2 for female).}
#'   \item{logWBC}{Log-transformed white blood cell count (numeric).}
#'   \item{rx}{Treatment regimen (numeric, coded treatment type).}
#' }
#' @source Data taken from the autoReg package.
#' @usage data(LeukemiaSurvival_df)
#' @export
load("data/LeukemiaSurvival_df.rda")
NULL


#' Cumulative Risk of Women Breast Cancer BRCA1 Mutation
#'
#' This dataset, BRCA1BreastCancer_df, is a data frame containing data on the cumulative risk of breast cancer in women with the BRCA1 mutation as a function of their age.
#' The dataset includes 11 observations, with each entry representing the cumulative risk at a specific age (in years).
#'
#' The dataset name has been kept as 'BRCA1BreastCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name BRCA1BreastCancer_df
#' @format A data frame with 11 observations and 2 variables:
#' \describe{
#'   \item{x}{Age of the individual in years (numeric).}
#'   \item{y}{Cumulative risk of breast cancer at that age (numeric).}
#' }
#' @source Data taken from the riskyr package.
#' @usage data(BRCA1BreastCancer_df)
#' @export
load("data/BRCA1BreastCancer_df.rda")
NULL


#' Cumulative Risk of  Women Ovarian Cancer BRCA1 Mutation
#'
#' This dataset, BRCA1OvarianCancer_df, is a data frame containing data on the cumulative risk of ovarian cancer in women with the BRCA1 mutation as a function of their age.
#' The dataset includes 63 observations, with each entry representing the cumulative risk at a specific age (in years).
#'
#' The dataset name has been kept as 'BRCA1OvarianCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name BRCA1OvarianCancer_df
#' @format A data frame with 63 observations and 2 variables:
#' \describe{
#'   \item{age}{Age of the individual in years (numeric).}
#'   \item{cumRisk}{Cumulative risk of ovarian cancer at that age (numeric).}
#' }
#' @source Data taken from the riskyr package.
#' Based on Figure 2 (p. 2408) of Kuchenbaecker, K. B., Hopper, J. L., Barnes, D. R., Phillips, K. A., Mooij, T. M., Roos-Blom, M. J., ... & BRCA1 and BRCA2 Cohort Consortium (2017). Risks of breast, ovarian, and contralateral breast cancer for BRCA1 and BRCA2 mutation carriers. JAMA, 317 (23), 2402-2416. doi: 10.1001/jama.2017.7112
#' @usage data(BRCA1OvarianCancer_df)
#' @export
load("data/BRCA1OvarianCancer_df.rda")
NULL


#' Cumulative Risk of Women Breast Cancer BRCA2 Mutation
#'
#' This dataset, BRCA2BreastCancer_df, is a data frame containing data on the cumulative risk of breast cancer in women with the BRCA2 mutation as a function of their age.
#' The dataset includes 11 observations, with each entry representing the cumulative risk at a specific age (in years).
#'
#' The dataset name has been kept as 'BRCA2BreastCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name BRCA2BreastCancer_df
#' @format A data frame with 11 observations and 2 variables:
#' \describe{
#'   \item{x}{Age of the individual in years (numeric).}
#'   \item{y}{Cumulative risk of breast cancer at that age (numeric).}
#' }
#' @source Data taken from the riskyr package.
#' @usage data(BRCA2BreastCancer_df)
#' @export
load("data/BRCA2BreastCancer_df.rda")
NULL


#' Cumulative Risk of Women Ovarian Cancer BRCA2 Mutation
#'
#' This dataset, BRCA2OvarianCancer_df, is a data frame containing data on the cumulative risk of ovarian cancer in women with the BRCA2 mutation as a function of their age.
#' The dataset includes 63 observations, with each entry representing the cumulative risk at a specific age (in years).
#'
#' The dataset name has been kept as 'BRCA2OvarianCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name BRCA2OvarianCancer_df
#' @format A data frame with 63 observations and 2 variables:
#' \describe{
#'   \item{age}{Age of the individual in years (numeric).}
#'   \item{cumRisk}{Cumulative risk of ovarian cancer at that age (numeric).}
#' }
#' @source Data taken from the riskyr package.
#' Based on Figure 2 (p. 2408) of Kuchenbaecker, K. B., Hopper, J. L., Barnes, D. R., Phillips, K. A., Mooij, T. M., Roos-Blom, M. J., ... & BRCA1 and BRCA2 Cohort Consortium (2017). Risks of breast, ovarian, and contralateral breast cancer for BRCA1 and BRCA2 mutation carriers. JAMA, 317 (23), 2402--2416. doi: 10.1001/jama.2017.7112
#' @usage data(BRCA2OvarianCancer_df)
#' @export
load("data/BRCA2OvarianCancer_df.rda")
NULL




#' Lung Cancer by Smoking Status and City
#'
#' This dataset, CancerSmokeCity_array, is an array containing data on lung cancer rates by smoking status and city. The data includes 32 observations organized by whether the individual smokes, their lung cancer status, and the city. The dimensions of the array are: 2 smoking statuses (smokes, does not smoke), 2 lung cancer statuses (cancer, no cancer), and 8 cities.
#'
#' The dataset name has been kept as 'CancerSmokeCity_array' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_array' indicates that the dataset is an array. The original content has not been modified in any way.
#'
#' @name CancerSmokeCity_array
#' @format An array with 32 elements, with dimensions:
#' \describe{
#'   \item{Smoking}{Smoking status (character): 2 categories (smokes, does not smoke).}
#'   \item{Lung}{Lung cancer status (character): 2 categories (cancer, no cancer).}
#'   \item{City}{City (character): 8 cities.}
#' }
#' @source Data taken from the flatr package.
#' Based on data in Z. Liu, Int. J. Epidemiol., 21: 197–201, 1992.
#' @usage data(CancerSmokeCity_array)
#' @export
load("data/CancerSmokeCity_array.rda")
NULL



#' VA Lung Cancer Data Set
#'
#' This dataset, VALungCancer_list, is a list containing two components: `X` and `y`. The data comes from a randomized trial of two treatment regimens for lung cancer. The `X` component contains the covariates, and the `y` component contains the survival time data. This dataset is typically used in survival analysis.
#'
#' The dataset name has been kept as 'VALungCancer_list' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_list' indicates that the dataset is a list. The original content has not been modified in any way.
#'
#' @name VALungCancer_list
#' @format A list with 2 components:
#' \describe{
#'   \item{X}{A numeric matrix with 1137 rows and 19 columns, representing the covariates.}
#'   \item{y}{A numeric matrix with 1137 rows and 12 columns, representing the survival time data. The columns include 'time' for the survival time and other variables related to survival analysis.}
#' }
#' @source Data taken from the ncvreg package.
#' Based on data from a randomized trial of two treatment regimens for lung cancer, as presented in the classic textbook by Kalbfleisch and Prentice.
#' @usage data(VALungCancer_list)
#' @export
load("data/VALungCancer_list.rda")
NULL



#' Factors associated with prostate specific antigen
#'
#' This dataset, PSAProstateCancer_df, is a data frame containing data from a study by Stamey et al. (1989) to examine the association between prostate specific antigen (PSA) and several clinical measures in men about to receive a radical prostatectomy. The dataset includes 97 observations and 9 variables, each representing a factor potentially associated with PSA.
#'
#' The dataset name has been kept as 'PSAProstateCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name PSAProstateCancer_df
#' @format A data frame with 97 observations and 9 variables:
#' \describe{
#'   \item{lcavol}{Logarithm of cancer volume (numeric).}
#'   \item{lweight}{Logarithm of prostate weight (numeric).}
#'   \item{age}{Age of the patient in years (integer).}
#'   \item{lbph}{Logarithm of benign prostatic hyperplasia (numeric).}
#'   \item{svi}{Seminal vesicle invasion (integer).}
#'   \item{lcp}{Logarithm of cancer perineural invasion (numeric).}
#'   \item{gleason}{Gleason score (integer).}
#'   \item{pgg45}{Percentage of cancerous tissue with Gleason score 4 or 5 (integer).}
#'   \item{lpsa}{Logarithm of prostate specific antigen (PSA) (numeric).}
#' }
#' @source Data taken from the ncvreg package.
#' Based on data from Stamey et al. (1989), which examined the association between prostate specific antigen (PSA) and several clinical measures potentially associated with PSA in men about to receive a radical prostatectomy.
#' @usage data(PSAProstateCancer_df)
#' @export
load("data/PSAProstateCancer_df.rda")
NULL




#' NCCTG Lung Cancer Data
#'
#' This dataset, NCCTGLungCancer_df, is a data frame containing data on survival in patients with advanced lung cancer from the North Central Cancer Treatment Group (NCCTG). The data includes 228 observations and 10 variables related to clinical and performance score data for lung cancer patients.
#'
#' The dataset name has been kept as 'NCCTGLungCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name NCCTGLungCancer_df
#' @format A data frame with 228 observations and 10 variables:
#' \describe{
#'   \item{inst}{Institution code (numeric).}
#'   \item{time}{Survival time in days (numeric).}
#'   \item{status}{Survival status: 1 = dead, 2 = alive (numeric).}
#'   \item{age}{Age of the patient (numeric).}
#'   \item{sex}{Sex of the patient: 1 = male, 2 = female (numeric).}
#'   \item{ph.ecog}{ECOG performance score (numeric).}
#'   \item{ph.karno}{Karnofsky performance score (numeric).}
#'   \item{pat.karno}{Patient's Karnofsky performance score (numeric).}
#'   \item{meal.cal}{Daily calorie intake (numeric).}
#'   \item{wt.loss}{Weight loss in kilograms (numeric).}
#' }
#' @source Data taken from the nftbart package.
#' Based on survival data from patients with advanced lung cancer from the North Central Cancer Treatment Group (NCCTG).
#' Performance scores rate how well the patient can perform usual daily activities.
#' @usage data(NCCTGLungCancer_df)
#' @export
load("data/NCCTGLungCancer_df.rda")
NULL



#' Bladder Cancer Recurrences
#'
#' This dataset, BladderCancer_df, is a data frame containing data on recurrences of bladder cancer. It is commonly used to demonstrate methodology for recurrent event modelling. The dataset includes information from 340 observations and 7 variables related to bladder cancer recurrences.
#'
#' The dataset name has been kept as 'BladderCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name BladderCancer_df
#' @format A data frame with 340 observations and 7 variables:
#' \describe{
#'   \item{id}{Patient identifier (integer).}
#'   \item{rx}{Treatment received: 1 = thiotepa, 2 = placebo (numeric).}
#'   \item{number}{Number of recurrences (integer).}
#'   \item{size}{Size of the recurrence (integer).}
#'   \item{stop}{Time at which the event or censoring occurred (integer).}
#'   \item{event}{Event status: 1 = recurrence, 0 = no recurrence or death (numeric).}
#'   \item{enum}{Event enumeration (integer).}
#' }
#' @source Data taken from the survival package.
#' @usage data(BladderCancer_df)
#' @export
load("data/BladderCancer_df.rda")
NULL



#' Chemotherapy for Stage B/C Colon Cancer
#'
#' This dataset, ColonCancerChemo_df, is a data frame containing data from one of the first successful trials of adjuvant chemotherapy for stage B/C colon cancer. The dataset includes information from 1858 observations and 16 variables. Each patient has two records: one for recurrence and one for death.
#'
#' The dataset name has been kept as 'ColonCancerChemo_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name ColonCancerChemo_df
#' @format A data frame with 1858 observations and 16 variables:
#' \describe{
#'   \item{id}{Patient identifier (numeric).}
#'   \item{study}{Study identifier (numeric).}
#'   \item{rx}{Treatment received: 1 = observation, 2 = levamisole, 3 = levamisole+5-FU (factor).}
#'   \item{sex}{Sex of the patient: 1 = male, 2 = female (numeric).}
#'   \item{age}{Age of the patient (numeric).}
#'   \item{obstruct}{Obstruction of the colon: 1 = yes, 0 = no (numeric).}
#'   \item{perfor}{Perforation of the colon: 1 = yes, 0 = no (numeric).}
#'   \item{adhere}{Adherence to nearby organs: 1 = yes, 0 = no (numeric).}
#'   \item{nodes}{Number of positive lymph nodes detected (numeric).}
#'   \item{status}{Survival status: 1 = alive, 2 = dead (numeric).}
#'   \item{differ}{Tumor differentiation: 1 = well, 2 = moderate, 3 = poor (numeric).}
#'   \item{extent}{Tumor extent: 1 = submucosa, 2 = muscle, 3 = serosa, 4 = contiguous structures (numeric).}
#'   \item{surg}{Surgical intervention: 0 = short, 1 = long (numeric).}
#'   \item{node4}{Presence of 4+ positive lymph nodes: 1 = yes, 0 = no (numeric).}
#'   \item{time}{Follow-up time in days (numeric).}
#'   \item{etype}{Event type: 1 = recurrence, 2 = death (numeric).}
#' }
#' @source Data taken from the survival package.
#' @usage data(ColonCancerChemo_df)
#' @export
load("data/ColonCancerChemo_df.rda")
NULL



#' Mouse Cancer Data
#'
#' This dataset, MaleMiceCancer_df, is a data frame containing data on the occurrence of cancer in male mice. The dataset records the number of days until the occurrence of cancer under different treatment conditions. It includes 181 observations and 4 variables.
#'
#' The dataset name has been kept as 'MaleMiceCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name MaleMiceCancer_df
#' @format A data frame with 181 observations and 4 variables:
#' \describe{
#'   \item{trt}{Treatment group: 1 = treatment, 2 = control (factor).}
#'   \item{days}{Number of days until the occurrence of cancer (numeric).}
#'   \item{outcome}{Cancer outcome: levels include 'none', 'localized', 'metastatic', and 'other' (factor).}
#'   \item{id}{Mouse identifier (integer).}
#' }
#' @source Data taken from the survival package.
#' @usage data(MaleMiceCancer_df)
#' @export
load("data/MaleMiceCancer_df.rda")
NULL


#' Ovarian Cancer Survival Data
#'
#' This dataset, OvarianCancer_df, is a data frame containing survival data from a randomized trial comparing two treatments for ovarian cancer. It includes 26 observations and 6 variables related to patient demographics, treatment, and survival outcomes.
#'
#' The dataset name has been kept as 'OvarianCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name OvarianCancer_df
#' @format A data frame with 26 observations and 6 variables:
#' \describe{
#'   \item{futime}{Follow-up time in days (numeric).}
#'   \item{fustat}{Survival status: 1 = deceased, 0 = alive (numeric).}
#'   \item{age}{Age of the patient in years (numeric).}
#'   \item{resid.ds}{Residual disease: size of the largest residual tumor in centimeters (numeric).}
#'   \item{rx}{Treatment group: 1 = standard treatment, 2 = experimental treatment (numeric).}
#'   \item{ecog.ps}{ECOG performance status score: 0 = fully active, 1 = restricted activity, 2 = unable to carry out work activities (numeric).}
#' }
#' @source Data taken from the survival package.
#' @usage data(OvarianCancer_df)
#' @export
load("data/OvarianCancer_df.rda")
NULL


#' Rotterdam Breast Cancer Data
#'
#' This dataset, RotterdamBreastCancer_df, is a data frame containing data on 2982 patients with primary breast cancer. The data was collected as part of the Rotterdam tumor bank and was used in Royston and Altman (2013) for survival analysis and prognostic model evaluation.
#'
#' The dataset name has been kept as 'RotterdamBreastCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name RotterdamBreastCancer_df
#' @format A data frame with 2982 observations and 15 variables:
#' \describe{
#'   \item{pid}{Patient ID (integer).}
#'   \item{year}{Year of diagnosis (integer).}
#'   \item{age}{Age at diagnosis in years (integer).}
#'   \item{meno}{Menopausal status: 1 = premenopausal, 2 = postmenopausal (integer).}
#'   \item{size}{Tumor size categorized into three levels (factor).}
#'   \item{grade}{Tumor grade: 1 = low, 2 = intermediate, 3 = high (integer).}
#'   \item{nodes}{Number of lymph nodes involved (integer).}
#'   \item{pgr}{Progesterone receptor status (integer).}
#'   \item{er}{Estrogen receptor status (integer).}
#'   \item{hormon}{Hormonal therapy: 1 = yes, 0 = no (integer).}
#'   \item{chemo}{Chemotherapy: 1 = yes, 0 = no (integer).}
#'   \item{rtime}{Time to recurrence in days (numeric).}
#'   \item{recur}{Recurrence status: 1 = recurrence, 0 = no recurrence (integer).}
#'   \item{dtime}{Time to death in days (numeric).}
#'   \item{death}{Death status: 1 = deceased, 0 = alive (integer).}
#' }
#' @source Data taken from the survival package.
#' Based on records from the Rotterdam tumor bank and used in Royston and Altman (2013) for survival analysis.
#' @usage data(RotterdamBreastCancer_df)
#' @export
load("data/RotterdamBreastCancer_df.rda")
NULL


#' Lung Cancer Deaths among UK Physicians
#'
#' This dataset, UKLungCancerDeaths_df, is a data frame containing the number of deaths due to lung cancer among British male physicians. The data is categorized by years of smoking and cigarette consumption and was originally used in Frome (1983) to analyze rates using Poisson regression models.
#'
#' The dataset name has been kept as 'UKLungCancerDeaths_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name UKLungCancerDeaths_df
#' @format A data frame with 63 observations and 4 variables:
#' \describe{
#'   \item{years.smok}{Years of smoking categorized into 9 levels (factor).}
#'   \item{cigarettes}{Cigarette consumption categorized into 7 levels (factor).}
#'   \item{Time}{Exposure time in person-years (numeric).}
#'   \item{y}{Number of lung cancer deaths (numeric).}
#' }
#' @source Data taken from the SMPracticals package.
#' Based on the study by Frome, E. L. (1983): *The analysis of rates using Poisson regression models*. Biometrics, 39, 665–674.
#' @usage data(UKLungCancerDeaths_df)
#' @export
load("data/UKLungCancerDeaths_df.rda")
NULL


#' Mice Deaths from Radiation
#'
#' This dataset, MiceDeathRadiation_df, is a data frame containing data on deaths of RFM male mice exposed to 300 rads of x-radiation at 5–6 weeks of age. The dataset records the causes of death, which include thymic lymphoma, reticulum cell sarcoma, and other causes. Additionally, it distinguishes between mice kept in a conventional environment and those in a germ-free environment.
#'
#' The dataset name has been kept as 'MiceDeathRadiation_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name MiceDeathRadiation_df
#' @format A data frame with 177 observations and 4 variables:
#' \describe{
#'   \item{type}{Type of environment (factor with 2 levels: conventional or germ-free).}
#'   \item{cause}{Cause of death (factor with 3 levels: thymic lymphoma, reticulum cell sarcoma, or other).}
#'   \item{status}{Survival status (numeric).}
#'   \item{y}{Time to death in days (numeric).}
#' }
#' @source Data taken from the SMPracticals package.
#' @usage data(MiceDeathRadiation_df)
#' @export
load("data/MiceDeathRadiation_df.rda")
NULL


#' Nodal Involvement in Prostate Cancer
#'
#' This dataset, NodalProstate_df, is a data frame containing data on 53 patients diagnosed with prostate cancer. The dataset records several clinical and diagnostic factors to assess nodal involvement without surgery. Nodal involvement is a critical factor in determining the treatment strategy for prostate cancer patients.
#'
#' The dataset name has been kept as 'NodalProstate_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name NodalProstate_df
#' @format A data frame with 53 observations and 7 variables:
#' \describe{
#'   \item{m}{Estimated probability of nodal involvement (numeric).}
#'   \item{r}{Predicted nodal involvement risk (numeric).}
#'   \item{aged}{Age group of the patient (factor with 2 levels).}
#'   \item{stage}{Cancer stage (factor with 2 levels).}
#'   \item{grade}{Tumor grade (factor with 2 levels).}
#'   \item{xray}{X-ray result (factor with 2 levels).}
#'   \item{acid}{Acid phosphatase test result (factor with 2 levels).}
#' }
#' @source Data taken from the SMPracticals package.
#' @usage data(NodalProstate_df)
#' @export
load("data/NodalProstate_df.rda")
NULL





#' DNA Methylation Data from Patients Prostate Cancer
#'
#' This dataset, ProstateMethylation_df, is a data frame containing pre-processed beta methylation values collected from two sample types (benign and tumor tissue) of 4 patients diagnosed with prostate cancer. The dataset can be used for analyses of methylation patterns in benign versus tumor tissues in prostate cancer cases.
#'
#' The dataset name has been kept as ProstateMethylation_df to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name ProstateMethylation_df
#' @format A data frame with 5067 observations and 9 variables:
#' \describe{
#'   \item{IlmnID}{Unique identifier for the methylation probe (character).}
#'   \item{FFPE_benign_1}{Beta methylation value for benign tissue, patient 1 (numeric).}
#'   \item{FFPE_benign_2}{Beta methylation value for benign tissue, patient 2 (numeric).}
#'   \item{FFPE_benign_3}{Beta methylation value for benign tissue, patient 3 (numeric).}
#'   \item{FFPE_benign_4}{Beta methylation value for benign tissue, patient 4 (numeric).}
#'   \item{FFPE_tumour_1}{Beta methylation value for tumor tissue, patient 1 (numeric).}
#'   \item{FFPE_tumour_2}{Beta methylation value for tumor tissue, patient 2 (numeric).}
#'   \item{FFPE_tumour_3}{Beta methylation value for tumor tissue, patient 3 (numeric).}
#'   \item{FFPE_tumour_4}{Beta methylation value for tumor tissue, patient 4 (numeric).}
#' }
#' @source Data taken from the betaclust package.
#' @usage data(ProstateMethylation_df)
#' @export
load("data/ProstateMethylation_df.rda")
NULL

#' Prostate Cancer Survival Data
#'
#' This dataset, ProstateSurvival_df, is a data frame containing survival times for two competing causes: time from prostate cancer diagnosis to death from prostate cancer, and time from prostate cancer diagnosis to death from other causes. The data set also contains information on several risk factors. The data in this data set are simulated from detailed competing risk survival curves and counts of numbers of patients per group presented in Lu-Yao et al. (2009).
#'
#' The dataset name has been kept as 'ProstateSurvival_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name ProstateSurvival_df
#' @format A data frame with 14,294 observations and 5 variables:
#' \describe{
#'   \item{grade}{Cancer grade categorized into 2 levels (factor).}
#'   \item{stage}{Cancer stage categorized into 3 levels (factor).}
#'   \item{ageGroup}{Age group categorized into 4 levels (factor).}
#'   \item{survTime}{Survival time in months from prostate cancer diagnosis (integer).}
#'   \item{status}{Event status: 1 for death from prostate cancer, 2 for death from other causes, 0 for censored (integer).}
#' }
#' @source Data taken from the asaur package.
#' Simulated data based on competing risk survival curves and patient counts presented in Lu-Yao et al. (2009): *Outcomes of localized prostate cancer following conservative management*. Journal of the American Medical Association, 302, 1202–1209.
#' @usage data(ProstateSurvival_df)
#' @export
load("data/ProstateSurvival_df.rda")
NULL




#' Effects of Blood Storage on Prostate Cancer Study
#'
#' This dataset, BloodStorageProstate_df, is a data frame containing data on 316 men who underwent radical prostatectomy and received a transfusion during or within 30 days of the surgery. The dataset includes demographic, baseline, and prognostic factors, as well as data on the time to biochemical recurrence of prostate cancer, as indicated by prostate serum antigen (PSA) levels.
#' The main exposure of interest was the red blood cell (RBC) storage duration group, and the outcome of interest was time to PSA cancer recurrence.
#'
#' The dataset name has been kept as 'BloodStorageProstate_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name BloodStorageProstate_df
#' @format A data frame with 316 observations and 20 variables:
#' \describe{
#'   \item{RBC.Age.Group}{Age group of red blood cells (numeric).}
#'   \item{Median.RBC.Age}{Median age of red blood cells (numeric).}
#'   \item{Age}{Patient's age (numeric).}
#'   \item{AA}{African American status (numeric).}
#'   \item{FamHx}{Family history of prostate cancer (numeric).}
#'   \item{PVol}{Prostate volume (numeric).}
#'   \item{TVol}{Tumor volume (numeric).}
#'   \item{T.Stage}{Tumor stage (numeric).}
#'   \item{bGS}{Biopsy grade score (numeric).}
#'   \item{BN+}{Bone metastasis status (numeric).}
#'   \item{OrganConfined}{Organ confinement status (numeric).}
#'   \item{PreopPSA}{Preoperative prostate serum antigen level (numeric).}
#'   \item{PreopTherapy}{Preoperative therapy received (numeric).}
#'   \item{Units}{Number of blood transfusion units (numeric).}
#'   \item{sGS}{Surgical Gleason score (numeric).}
#'   \item{AnyAdjTherapy}{Any adjuvant therapy received (numeric).}
#'   \item{AdjRadTherapy}{Adjuvant radiation therapy received (numeric).}
#'   \item{Recurrence}{Cancer recurrence status (numeric).}
#'   \item{Censor}{Censoring status (numeric).}
#'   \item{TimeToRecurrence}{Time to biochemical recurrence in months (numeric).}
#' }
#' @source Data taken from the medicaldata package.
#' Cata et al. (2011). *Blood Storage Duration and Biochemical Recurrence of Cancer after Radical Prostatectomy*. Mayo Clinic Proceedings, 86(2), 120–127.
#' @usage data(BloodStorageProstate_df)
#' @export
load("data/BloodStorageProstate_df.rda")
NULL


#' Radiation Dose Effects on Chromosomal Abnormality
#'
#' This dataset, RadiationEffects_df, is a data frame containing data from an experiment conducted to examine the effects of gamma radiation on the number of chromosomal abnormalities observed. The data explores the relationships between radiation dose, dose rate, and chromosomal changes.
#'
#' The dataset name has been kept as 'RadiationEffects_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name RadiationEffects_df
#' @format A data frame with 27 observations and 4 variables:
#' \describe{
#'   \item{cells}{Number of cells observed (integer).}
#'   \item{ca}{Number of chromosomal abnormalities (integer).}
#'   \item{doseamt}{Amount of gamma radiation dose (numeric).}
#'   \item{doserate}{Rate of gamma radiation dose (numeric).}
#' }
#' @source Data taken from the faraway package.
#' Based on the study by Purott R. and Reeder E. (1976): *The effect of changes in dose rate on the yield of chromosome aberrations in human lymphocytes exposed to gamma radiation*. Mutation Research, 35, 437–444.
#' @usage data(RadiationEffects_df)
#' @export
load("data/RadiationEffects_df.rda")
NULL




#' Prostate Cancer Surgery Study
#'
#' This dataset, ProstateSurgery_df, is a data frame containing data from a study on 97 men with prostate cancer who were scheduled to undergo radical prostatectomy. The dataset includes clinical and pathological variables associated with prostate cancer.
#'
#' The dataset name has been kept as 'ProstateSurgery_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name ProstateSurgery_df
#' @format A data frame with 97 observations and 9 variables:
#' \describe{
#'   \item{lcavol}{Logarithm of cancer volume (numeric).}
#'   \item{lweight}{Logarithm of prostate weight (numeric).}
#'   \item{age}{Patient's age in years (integer).}
#'   \item{lbph}{Logarithm of the amount of benign prostatic hyperplasia (numeric).}
#'   \item{svi}{Seminal vesicle invasion (binary: 0 = No, 1 = Yes; integer).}
#'   \item{lcp}{Logarithm of capsular penetration (numeric).}
#'   \item{gleason}{Gleason score (integer).}
#'   \item{pgg45}{Percentage of Gleason scores 4 or 5 (integer).}
#'   \item{lpsa}{Logarithm of prostate-specific antigen (PSA) level (numeric).}
#' }
#' @source Data taken from the faraway package.
#' @usage data(ProstateSurgery_df)
#' @export
load("data/ProstateSurgery_df.rda")
NULL


#' Aflatoxin Dosage and Liver Cancer in Lab Animals
#'
#' This dataset, AflatoxinLiverCancer_df, is a data frame containing data from a study where varying doses of Aflatoxin B1 were administered to lab animals. The dataset records the total number of animals exposed to each dose and the number of animals that developed liver cancer.
#'
#' The dataset name has been kept as 'AflatoxinLiverCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name AflatoxinLiverCancer_df
#' @format A data frame with 6 observations and 3 variables:
#' \describe{
#'   \item{dose}{Dose of Aflatoxin B1 administered (integer).}
#'   \item{total}{Total number of animals exposed to the dose (integer).}
#'   \item{tumor}{Number of animals that developed liver cancer (integer).}
#' }
#' @source Data taken from the faraway package.
#' Gaylor DW (1987). *Linear nonparametric upper limits for low dose extrapolation*. ASA Proceedings of the Biopharmaceutical Section.
#' @usage data(AflatoxinLiverCancer_df)
#' @export
load("data/AflatoxinLiverCancer_df.rda")
NULL



#' Effect of Vinylidene Fluoride on Liver Cancer
#'
#' This dataset, VinylideneLiverCancer_df, is a data frame containing data from an experiment to investigate whether vinylidene fluoride induces liver damage. The dataset records the levels of three serum enzymes (SDH, SGOT, SGPT) under four different dosages of vinylidene fluoride. Increased serum enzyme levels are indicative of liver damage.
#' Real data which are available on page 10 of Silvapulle and Sen (2005) and in a report prepared by Litton Bionetics Inc in 1984. These data were used in an experiment to find out whether vinylidene fluoride gives rise to liver damage.
#'
#' The dataset name has been kept as 'VinylideneLiverCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name VinylideneLiverCancer_df
#' @format A data frame with 40 observations and 4 variables:
#' \describe{
#'   \item{SDH}{Serum enzyme SDH levels (integer).}
#'   \item{SGOT}{Serum enzyme SGOT levels (integer).}
#'   \item{SGPT}{Serum enzyme SGPT levels (integer).}
#'   \item{dose}{Dose of vinylidene fluoride administered (factor with 4 levels).}
#' }
#' @source Data taken from the goric package.
#' Silvapulle MJ and Sen PK (2005). *Constrained Statistical Inference: Order, Inequality, and Shape Restrictions*. Wiley.
#' Litton Bionetics Inc (1984). Report on the effects of vinylidene fluoride on liver enzymes in Fischer-344 rats.
#' @usage data(VinylideneLiverCancer_df)
#' @export
load("data/VinylideneLiverCancer_df.rda")
NULL


#' ICGC Liver Cancer Data from Japan
#'
#' This dataset, ICGCLiver_df, is a data frame containing liver cancer data from Japan, released by the ICGC database. The dataset includes survival time, event status, and expression levels for four genes (ANLN, CENPA, GPR182, and BCO2).
#'
#' The dataset name has been kept as 'ICGCLiver_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name ICGCLiver_df
#' @format A data frame with 232 observations and 6 variables:
#' \describe{
#'   \item{time}{Survival time (numeric).}
#'   \item{status}{Event status (1 = event occurred, 0 = censored) (integer).}
#'   \item{ANLN}{Expression level of the ANLN gene (numeric).}
#'   \item{CENPA}{Expression level of the CENPA gene (numeric).}
#'   \item{GPR182}{Expression level of the GPR182 gene (numeric).}
#'   \item{BCO2}{Expression level of the BCO2 gene (numeric).}
#' }
#' @source Data taken from the ggrisk package.
#' ICGC (International Cancer Genome Consortium) database. Liver cancer data from Japan.
#' @usage data(ICGCLiver_df)
#' @export
load("data/ICGCLiver_df.rda")
NULL



#' Diagnosis of Pancreatic Cancer with CA19-9 Biomarker
#'
#' This dataset, CA19PancreaticCancer_df, is a data frame containing data from a diagnostic accuracy review on the CA19-9 biomarker used for diagnosing pancreatic cancer.
#' The dataset includes the number of true positives (TP), false positives (FP), false negatives (FN), and true negatives (TN) from various studies.
#'
#' The dataset name has been kept as 'CA19PancreaticCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name CA19PancreaticCancer_df
#' @format A data frame with 22 observations and 5 variables:
#' \describe{
#'   \item{study}{Name or identifier of the study (character).}
#'   \item{TP}{True positives – the number of correctly identified positive cases (integer).}
#'   \item{FP}{False positives – the number of cases incorrectly identified as positive (integer).}
#'   \item{FN}{False negatives – the number of cases incorrectly identified as negative (integer).}
#'   \item{TN}{True negatives – the number of correctly identified negative cases (integer).}
#' }
#' @source Data taken from the R4HCR package.
#' @usage data(CA19PancreaticCancer_df)
#' @export
load("data/CA19PancreaticCancer_df.rda")
NULL



#' AI for Assessment of Indeterminate Pulmonary Nodules
#'
#' This dataset, AIPulmonaryNodules_df, is a data frame containing data from a study on the performance of an artificial intelligence (AI) risk stratification tool for assessing Indeterminate Pulmonary Nodules (IPNs) in chest CT scans. The dataset includes information on whether cancer was diagnosed and the AI tool's rating of the probability of cancer (from 0 to 100).
#'
#' The dataset name has been kept as 'AIPulmonaryNodules_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name AIPulmonaryNodules_df
#' @format A data frame with 200 observations and 2 variables:
#' \describe{
#'   \item{cancer}{Cancer diagnosis – whether the nodule is cancerous (1 = cancer, 0 = no cancer) (integer).}
#'   \item{rating}{AI rating of the probability of cancer, ranging from 0 to 100 (integer).}
#' }
#' @source Data taken from the R4HCR package.
#' @usage data(AIPulmonaryNodules_df)
#' @export
load("data/AIPulmonaryNodules_df.rda")
NULL


#' Years of Smoking and Lung Cancer Deaths in Men
#'
#' This dataset, SmokingLungCancer_df, is a data frame containing data on man-years of risk and observed number of lung cancer deaths among men.
#' The data includes information about the years of smoking, pack-years, number of cigarettes smoked per day, and the number of deaths due to lung cancer.
#'
#' The dataset name has been kept as 'SmokingLungCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name SmokingLungCancer_df
#' @format A data frame with 63 observations and 4 variables:
#' \describe{
#'   \item{yrs_smk}{Years of smoking, represented as a factor with 9 levels.}
#'   \item{pys}{Pack-years of smoking (numeric).}
#'   \item{num_cigs}{Number of cigarettes smoked per day, represented as a factor with 7 levels.}
#'   \item{deaths}{Number of deaths due to lung cancer (numeric).}
#' }
#' @source Data taken from the R4HCR package.
#' Data originally from Table 24-4, page 702 of Kleinbaum et al (1988).
#' @usage data(SmokingLungCancer_df)
#' @export
load("data/SmokingLungCancer_df.rda")
NULL


#' Incidental or Screen-Detected Lung Nodules
#'
#' This dataset, LungNodulesDetected_df, is a data frame containing data on incidental or screen-detected lung nodules. The data includes information such as patient demographics, smoking status, nodule characteristics, and whether the nodule is malignant. The dataset was collected from patients with pulmonary nodules of up to 15mm detected on routine CT chest scans, aged 18 years or older, from 3 academic centers in the UK.
#'
#' The dataset name has been kept as 'LungNodulesDetected_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name LungNodulesDetected_df
#' @format A data frame with 999 observations and 8 variables:
#' \describe{
#'   \item{sex}{Gender of the patient, represented as a factor with 2 levels (Male, Female).}
#'   \item{age}{Age of the patient (numeric).}
#'   \item{num.annotated}{Number of annotated nodules (numeric).}
#'   \item{location}{Location of the nodule, represented as a factor with 6 levels.}
#'   \item{spiculate}{Whether the nodule is spiculated, represented as a factor with 2 levels (Yes, No).}
#'   \item{smoke.status}{Smoking status of the patient, represented as a factor with 5 levels.}
#'   \item{diameter}{Diameter of the nodule (numeric).}
#'   \item{malignant}{Malignancy status of the nodule (numeric).}
#' }
#' @source Data taken from the R4HCR package.
#' The dataset was collected from patients with pulmonary nodules detected on CT chest scans, aged 18 years or older, from 3 academic centers in the UK.
#' @usage data(LungNodulesDetected_df)
#' @export
load("data/LungNodulesDetected_df.rda")
NULL


#' Impact of 6-MP on Acute Leukemia Remission Duration
#'
#' This dataset, LeukemiaRemission_df, is a data frame containing data on the duration of remission for acute leukemia patients
#' who were randomly assigned to maintenance therapy with 6-mercaptopurine (6-MP), an active antileukemic compound, or a placebo.
#' The dataset includes the sex, white blood cell (WBC) count, time to relapse, event status, and treatment group for the patients.
#'
#' The dataset name has been kept as 'LeukemiaRemission_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name LeukemiaRemission_df
#' @format A data frame with 42 observations and 5 variables:
#' \describe{
#'   \item{sex}{Sex of the patient (integer).}
#'   \item{wbc}{White blood cell (WBC) count (numeric).}
#'   \item{time}{Time to relapse (integer).}
#'   \item{event}{Event status (Factor with 2 levels: 1 = relapse, 0 = no relapse).}
#'   \item{grp}{Treatment group (Factor with 2 levels: 1 = 6-MP, 0 = placebo).}
#' }
#' @source Data taken from the R4HCR package.
#' Kleinbaum, D.G. and Klein, M., 1996. Survival Analysis: A Self-Learning Text. Springer.
#' @usage data(LeukemiaRemission_df)
#' @export
load("data/LeukemiaRemission_df.rda")
NULL




#' Suspected Cancer (SCAN) Pathway
#'
#' This dataset, SuspectedCancer_df, is a data frame containing blood test results from individuals presenting with non-specific symptoms of cancer.
#' The data was collected as part of the Suspected CANcer (SCAN) pathway, which evaluates a new standard of care for patients in primary care settings.
#'
#' The dataset name has been kept as 'SuspectedCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name SuspectedCancer_df
#' @format A data frame with 750 observations and 8 variables:
#' \describe{
#'   \item{age}{Age of the individual (numeric).}
#'   \item{comorbidity}{Comorbidity index (numeric).}
#'   \item{haemoglobin}{Haemoglobin level (numeric).}
#'   \item{albumin}{Albumin level (numeric).}
#'   \item{alaninetrans}{Alanine aminotransferase level (numeric).}
#'   \item{whitebloodcell}{White blood cell count (numeric).}
#'   \item{bilirubin}{Bilirubin level (numeric).}
#'   \item{calcium}{Calcium level (numeric).}
#' }
#' @source Data taken from the R4HCR package.
#' Nicholson BD, Oke JL, Friedemann Smith C, et al. The Suspected CANcer (SCAN) pathway: protocol for evaluating a new standard of care for patients with non-specific symptoms of cancer. BMJ Open 2018;8:e018168.
#' @usage data(SuspectedCancer_df)
#' @export
load("data/SuspectedCancer_df.rda")
NULL


#' Cervical Cancer Screening with Smartphones
#'
#' This dataset, CervicalCancer_df, is a data frame containing data from a study evaluating the diagnostic accuracy of CIN2+ detection
#' using a combined approach with naked-eye and digital VIA (visual inspection with acetic acid) on a Samsung Galaxy J5 smartphone,
#' compared to traditional naked-eye inspection alone.
#'
#' The dataset name has been kept as 'CervicalCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name CervicalCancer_df
#' @format A data frame with 181 observations and 10 variables:
#' \describe{
#'   \item{hpv16}{Presence of HPV16 (Factor with 2 levels).}
#'   \item{hpv1845}{Presence of HPV18/45 (Factor with 2 levels).}
#'   \item{hpvother}{Presence of other HPV strains (Factor with 2 levels).}
#'   \item{naked_via}{Naked-eye VIA result (Factor with 2 levels).}
#'   \item{smart_via}{Digital VIA result with smartphone (Factor with 2 levels).}
#'   \item{treatment}{Treatment received (Factor with 2 levels).}
#'   \item{combined_via}{Combined naked-eye and digital VIA (Factor with 2 levels).}
#'   \item{histology}{Histological diagnosis (Factor with 5 levels).}
#'   \item{cytology}{Cytological diagnosis (Factor with 7 levels).}
#'   \item{CIN2plus}{CIN2+ status (Factor with 2 levels).}
#' }
#' @source Data taken from the R4HCR package.
#' Data directly available from https://yareta.unige.ch/archives/ffbeb6d7-b390-4755-987e-8faf85f97c67
#' @usage data(CervicalCancer_df)
#' @export
load("data/CervicalCancer_df.rda")
NULL


#' US Cancer Incidence, Mortality, and Survival Changes
#'
#' This dataset, USCancerStats_df, is a data frame containing cancer statistics for 20 solid tumor types, including
#' incidence, mortality, and survival data. The dataset reports the absolute difference in 5-year survival between 1989-1995 and 1950-1954,
#' as well as the percentage change in mortality and incidence from 1950 to 1996.
#'
#' The dataset name has been kept as 'USCancerStats_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name USCancerStats_df
#' @format A data frame with 20 observations and 4 variables:
#' \describe{
#'   \item{site}{Tumor site (character).}
#'   \item{survival}{Absolute difference in 5-year survival (numeric).}
#'   \item{mortality}{Percentage change in mortality (numeric).}
#'   \item{incidence}{Percentage change in incidence (numeric).}
#' }
#' @source Data taken from the R4HCR package.
#' @usage data(USCancerStats_df)
#' @export
load("data/USCancerStats_df.rda")
NULL


#' North Humberside Leukemia and Lymphoma Cases
#'
#' This dataset, LeukemiaLymphomaCases_df, is a data frame containing information on the number of leukemia and lymphoma cases
#' reported in different locations within North Humberside. The dataset includes the location ID and the number of cases for each location.
#'
#' The dataset name has been kept as 'LeukemiaLymphomaCases_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name LeukemiaLymphomaCases_df
#' @format A data frame with 191 observations and 2 variables:
#' \describe{
#'   \item{locationid}{Location ID (integer).}
#'   \item{numcases}{Number of leukemia and lymphoma cases (integer).}
#' }
#' @source Data taken from the rsatscan package, distributed with SaTScan software: https://www.satscan.org
#' @usage data(LeukemiaLymphomaCases_df)
#' @export
load("data/LeukemiaLymphomaCases_df.rda")
NULL



#' North Humberside Leukemia and Lymphoma Control Cases
#'
#' This dataset, LeukemiaLymphomaControl_df, is a data frame containing information on the number of control cases
#' for leukemia and lymphoma reported in different locations within North Humberside. The dataset includes the location ID and the number of control cases for each location.
#'
#' The dataset name has been kept as 'LeukemiaLymphomaControl_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name LeukemiaLymphomaControl_df
#' @format A data frame with 191 observations and 2 variables:
#' \describe{
#'   \item{locationid}{Location ID (integer).}
#'   \item{numcontrols}{Number of control cases (integer).}
#' }
#' @source Data taken from the rsatscan package, distributed with SaTScan software: https://www.satscan.org
#' @usage data(LeukemiaLymphomaControl_df)
#' @export
load("data/LeukemiaLymphomaControl_df.rda")
NULL

#' North Humberside Leukemia and Lymphoma Geographic Data
#'
#' This dataset, LeukemiaLymphomaGeo_df, is a data frame containing the geographical coordinates (x and y)
#' for locations in North Humberside related to leukemia and lymphoma cases. It includes the location ID and the coordinates
#' for each of the 191 locations.
#'
#' The dataset name has been kept as 'LeukemiaLymphomaGeo_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name LeukemiaLymphomaGeo_df
#' @format A data frame with 191 observations and 3 variables:
#' \describe{
#'   \item{locationid}{Location ID (integer).}
#'   \item{x-coordinate}{X-coordinate (integer).}
#'   \item{y-coordinate}{Y-coordinate (integer).}
#' }
#' @source Data taken from the rsatscan package, distributed with SaTScan software: https://www.satscan.org
#' @usage data(LeukemiaLymphomaGeo_df)
#' @export
load("data/LeukemiaLymphomaGeo_df.rda")
NULL




#' New Mexico Brain Cancer Cases Data
#'
#' This dataset, BrainCancerCases_df, is a data frame containing data on brain cancer cases in New Mexico.
#' It includes information about the county, number of cases, year of diagnosis, age group, and sex of the patients.
#' The dataset consists of 1175 observations with 5 variables.
#'
#' The dataset name has been kept as 'BrainCancerCases_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name BrainCancerCases_df
#' @format A data frame with 1175 observations and 5 variables:
#' \describe{
#'   \item{county}{County of diagnosis (Factor with 31 levels).}
#'   \item{cases}{Number of cases (integer).}
#'   \item{year}{Year of diagnosis (integer).}
#'   \item{agegroup}{Age group of patients (integer).}
#'   \item{sex}{Sex of the patient (integer).}
#' }
#' @source Data taken from the rsatscan package, distributed with SaTScan software: https://www.satscan.org
#' @usage data(BrainCancerCases_df)
#' @export
load("data/BrainCancerCases_df.rda")
NULL



#' New Mexico Brain Cancer Geography Data
#'
#' This dataset, BrainCancerGeo_df, is a data frame containing geographic information related to brain cancer cases in New Mexico.
#' It includes data on the county, latitude, and longitude of the regions where brain cancer cases have been reported.
#' The dataset consists of 32 observations with 3 variables.
#'
#' The dataset name has been kept as 'BrainCancerGeo_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name BrainCancerGeo_df
#' @format A data frame with 32 observations and 3 variables:
#' \describe{
#'   \item{county}{County where the cases were recorded (Factor with 32 levels).}
#'   \item{lat}{Latitude of the county (integer).}
#'   \item{long}{Longitude of the county (integer).}
#' }
#' @source Data taken from the rsatscan package, distributed with SaTScan software: https://www.satscan.org
#' @usage data(BrainCancerGeo_df)
#' @export
load("data/BrainCancerGeo_df.rda")
NULL



#' Alcohol Intake and Colorectal Cancer Data
#'
#' This dataset, AlcoholIntakeCancer_df, is a data frame containing data related to alcohol intake and its association with colorectal cancer risk.
#' The data includes information on alcohol intake levels (dose), the number of cancer cases, person-years of observation, and the relative risk (logrr) along with its standard error (se).
#' The dataset consists of 48 observations with 7 variables.
#'
#' The dataset name has been kept as 'AlcoholIntakeCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name AlcoholIntakeCancer_df
#' @format A data frame with 48 observations and 7 variables:
#' \describe{
#'   \item{id}{Identifier for the study (factor).}
#'   \item{type}{Type of study (factor).}
#'   \item{dose}{Level of alcohol intake (numeric).}
#'   \item{cases}{Number of colorectal cancer cases (integer).}
#'   \item{peryears}{Person-years of observation (numeric).}
#'   \item{logrr}{Logarithm of the relative risk (numeric).}
#'   \item{se}{Standard error of the logarithm of the relative risk (numeric).}
#' }
#' @source Data taken from the mixmeta package. Available at: https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041
#' @usage data(AlcoholIntakeCancer_df)
#' @export
load("data/AlcoholIntakeCancer_df.rda")
NULL



#' Mutant p53 Gene and Squamous Cell Carcinoma
#'
#' This dataset, Carcinoma_p53_df, is a data frame containing data related to the presence of the mutant p53 tumor suppressor gene
#' and its potential role as a prognostic factor in patients with squamous cell carcinoma arising from the oropharynx cavity.
#' The dataset includes unadjusted estimates of log hazard ratios for mutant p53 compared to normal p53 for disease-free and overall survival,
#' along with their associated variances, collected from 6 observational studies.
#' The dataset consists of 6 observations with 5 variables.
#'
#' The dataset name has been kept as 'Carcinoma_p53_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name Carcinoma_p53_df
#' @format A data frame with 6 observations and 5 variables:
#' \describe{
#'   \item{study}{Study identifier (integer).}
#'   \item{y1}{Unadjusted log hazard ratio for disease-free survival (numeric).}
#'   \item{y2}{Unadjusted log hazard ratio for overall survival (numeric).}
#'   \item{V1}{Variance of the log hazard ratio for disease-free survival (numeric).}
#'   \item{V2}{Variance of the log hazard ratio for overall survival (numeric).}
#' }
#' @source Data taken from the mixmeta package. References:
#' \itemize{
#'   \item Jackson D, Riley R, White IR (2011). Multivariate meta-analysis: Potential and promise. Statistics in Medicine. 30 (20);2481–2498.
#'   \item Tandon S, Tudur-Smith C, Riley RD, et al. (2010). A systematic review of p53 as a prognostic factor of survival in squamous cell carcinoma of the four main anatomical subsites of the head and neck. Cancer Epidemiology, Biomarkers and Prevention. 19 (2):574–587.
#'   \item Sera F, Armstrong B, Blangiardo M, Gasparrini A (2019). An extended mixed-effects framework for meta-analysis. Statistics in Medicine. 2019;38(29):5429–5444.
#' }
#' @usage data(Carcinoma_p53_df)
#' @export
load("data/Carcinoma_p53_df.rda")
NULL



#' PubMed Data of miRNAs in Colorectal Cancer
#'
#' This dataset, ColorectalMiRNAs_tbl_df, is a tibble containing information from PubMed abstracts related to microRNAs (miRNAs) in colorectal cancer.
#' The data provides key details such as publication metadata, article abstracts, and associated miRNAs.
#' The dataset consists of 508 observations with 8 variables.
#'
#' The dataset name has been kept as 'ColorectalMiRNAs_tbl_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_tbl_df' indicates that the dataset is a tibble, which is an enhanced version of a data frame in R.
#' The original content has not been modified in any way.
#'
#' @name ColorectalMiRNAs_tbl_df
#' @format A tibble with 508 observations and 8 variables:
#' \describe{
#'   \item{PMID}{PubMed Identifier (numeric).}
#'   \item{Year}{Publication year of the article (numeric).}
#'   \item{Title}{Title of the PubMed article (character).}
#'   \item{Abstract}{Abstract of the article (character).}
#'   \item{Language}{Language of the article (character).}
#'   \item{Type}{Type of publication, e.g., review, study (character).}
#'   \item{Topic}{Research topic related to colorectal cancer and miRNAs (character).}
#'   \item{miRNA}{Specific microRNAs mentioned in the publication (character).}
#' }
#' @source Data taken from the miRetrieve package. More information is available at: \url{https://pubmed.ncbi.nlm.nih.gov/}
#' @usage data(ColorectalMiRNAs_tbl_df)
#' @export
load("data/ColorectalMiRNAs_tbl_df.rda")
NULL


#' PubMed Data of miRNAs in Pancreatic Cancer
#'
#' This dataset, PancreaticMiRNAs_tbl_df, is a tibble containing information from PubMed abstracts related to microRNAs (miRNAs) in pancreatic cancer.
#' The data provides key details such as publication metadata, article abstracts, and associated miRNAs.
#' The dataset consists of 381 observations with 8 variables.
#'
#' The dataset name has been kept as 'PancreaticMiRNAs_tbl_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_tbl_df' indicates that the dataset is a tibble, which is an enhanced version of a data frame in R.
#' The original content has not been modified in any way.
#'
#' @name PancreaticMiRNAs_tbl_df
#' @format A tibble with 381 observations and 8 variables:
#' \describe{
#'   \item{PMID}{PubMed Identifier (numeric).}
#'   \item{Year}{Publication year of the article (numeric).}
#'   \item{Title}{Title of the PubMed article (character).}
#'   \item{Abstract}{Abstract of the article (character).}
#'   \item{Language}{Language of the article (character).}
#'   \item{Type}{Type of publication, e.g., review, study (character).}
#'   \item{Topic}{Research topic related to pancreatic cancer and miRNAs (character).}
#'   \item{miRNA}{Specific microRNAs mentioned in the publication (character).}
#' }
#' @source Data taken from the miRetrieve package. More information is available at: \url{https://pubmed.ncbi.nlm.nih.gov/}
#' @usage data(PancreaticMiRNAs_tbl_df)
#' @export
load("data/PancreaticMiRNAs_tbl_df.rda")
NULL



#' Histology Grade and Risk Factors for Endometrial Cancer
#'
#' This dataset, EndometrialCancer_df, is a data frame containing information on histology grades and associated risk factors for 79 cases of endometrial cancer.
#' The dataset provides variables related to histological grades, pathological indices, and other clinical measures.
#' The dataset consists of 79 observations with 4 variables.
#'
#' The dataset name has been kept as 'EndometrialCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name EndometrialCancer_df
#' @format A data frame with 79 observations and 4 variables:
#' \describe{
#'   \item{NV}{Nuclear volume (integer).}
#'   \item{PI}{Pathological index (integer).}
#'   \item{EH}{Endometrial hyperplasia (numeric).}
#'   \item{HG}{Histology grade (integer).}
#' }
#' @source Data taken from the enrichwith package.
#' The dataset was first analyzed in Heinze and Schemper (2002) and originally provided by Dr. E. Asseryanis from the Medical University of Vienna.
#' The data was downloaded in .dat format from \url{https://users.stat.ufl.edu/~aa/glm/data/}, which provides datasets used in Agresti (2015).
#' @usage data(EndometrialCancer_df)
#' @export
load("data/EndometrialCancer_df.rda")
NULL


#' US Mortality Rates by Cause (Cancer) and Gender
#'
#' This dataset, USMortalityCancer_df, is a data frame containing mortality rates across all ages in the USA (Nation-wide) by cause of death, sex, and rural/urban status, recorded from 2011 to 2013.
#' It includes national aggregate rates and region-wise rates for each administrative region under the Department of Health and Human Services (HHS).
#' The dataset consists of 40 observations with 5 variables.
#'
#' The dataset name has been kept as 'USMortalityCancer_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name USMortalityCancer_df
#' @format A data frame with 40 observations and 5 variables:
#' \describe{
#'   \item{Status}{Rural or urban status (factor with 2 levels).}
#'   \item{Sex}{Gender of the individual (factor with 2 levels).}
#'   \item{Cause}{Cause of death (factor with 10 levels).}
#'   \item{Rate}{Mortality rate (numeric).}
#'   \item{SE}{Standard error of the mortality rate (numeric).}
#' }
#' @source Data taken from the lattice package.
#' This dataset is based on the study by the Rural Health Reform Policy Research Center: *Exploring Rural and Urban Mortality Differences*, August 2015, Bethesda, MD.
#' Available at \url{https://ruralhealth.und.edu/projects/health-reform-policy-research-center/rural-urban-mortality}.
#' @usage data(USMortalityCancer_df)
#' @export
load("data/USMortalityCancer_df.rda")
NULL


#' US Region Mortality Rates by Cause (Cancer) and Gender
#'
#' This dataset, USRegionalMortality_df, is a data frame containing mortality rates across all ages in the USA, recorded region-wise by cause of death, sex, and rural/urban status for the years 2011–2013.
#' It includes region-wide rates for each administrative region under the Department of Health and Human Services (HHS).
#' The dataset consists of 400 observations with 6 variables.
#'
#' The dataset name has been kept as 'USRegionalMortality_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name USRegionalMortality_df
#' @format A data frame with 400 observations and 6 variables:
#' \describe{
#'   \item{Region}{Administrative region under the Department of Health and Human Services (HHS) (factor with 10 levels).}
#'   \item{Status}{Rural or urban status (factor with 2 levels).}
#'   \item{Sex}{Gender of the individual (factor with 2 levels).}
#'   \item{Cause}{Cause of death (factor with 10 levels).}
#'   \item{Rate}{Mortality rate (numeric).}
#'   \item{SE}{Standard error of the mortality rate (numeric).}
#' }
#' @source Data taken from the lattice package.
#' This dataset is based on the study by the Rural Health Reform Policy Research Center: *Exploring Rural and Urban Mortality Differences*, August 2015, Bethesda, MD.
#' Available at \url{https://ruralhealth.und.edu/projects/health-reform-policy-research-center/rural-urban-mortality}.
#' @usage data(USRegionalMortality_df)
#' @export
load("data/USRegionalMortality_df.rda")
NULL




#' Simulated Data from Skin Cancer Chemoprevention Trial
#'
#' This dataset, SkinCancerChemo_df, is a data frame containing simulated data mimicking the Skin Cancer Chemoprevention Trial as used in Chiou et al. (2017). It records tumor recurrence in patients who were part of the trial, which includes information on patient demographics, prior tumors, and the treatment they received.
#' The dataset consists of 894 observations with 7 variables.
#'
#' The dataset name has been kept as 'SkinCancerChemo_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the OncoDataSets package and assists users in identifying
#' its specific characteristics. The suffix '_df' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name SkinCancerChemo_df
#' @format A data frame with 894 observations and 7 variables:
#' \describe{
#'   \item{id}{Patient ID (numeric).}
#'   \item{time}{Time to event or censoring (numeric).}
#'   \item{count}{Number of tumor recurrences (numeric).}
#'   \item{age}{Age of the patient at the start of the trial (numeric).}
#'   \item{male}{Gender of the patient (1 = male, 0 = female) (numeric).}
#'   \item{dfmo}{Indicates whether the patient received DFMO treatment (1 = yes, 0 = no) (numeric).}
#'   \item{priorTumor}{Number of prior tumors before the trial (numeric).}
#' }
#' @source Data taken from the spef package.
#' This simulated dataset is based on the study by Chiou et al. (2017): *Marginal and conditional cumulative incidence functions in the presence of dependent censoring*. Biometrics, 73(2), 385–394.
#' @usage data(SkinCancerChemo_df)
#' @export
load("data/SkinCancerChemo_df.rda")
NULL














