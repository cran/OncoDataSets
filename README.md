# OncoDataSets

The `OncoDataSets` package offers a rich collection of datasets focused on cancer research, covering survival rates, genetic studies, biomarkers, 
and epidemiological insights. This package is designed to support researchers, analysts, and bioinformatics practitioners in advancing the understanding of cancer epidemiology, genetics, and treatment outcomes.

The datasets span various cancer types, including melanoma, leukemia, breast, ovarian, and lung cancer. 
Each dataset is named with a suffix indicating its structure or type, making it easier to identify and work with the data.

## Installation

You can install the `OncoDataSets` package from CRAN with the following R function:

```R

install.packages("OncoDataSets")

```

## Usage

After installation, load the package and start exploring the datasets. 
The naming convention helps you easily understand the structure of each dataset:

- _df: Data frame.
- _tbl_df: Tibble (a modern version of a data frame).
- _array: Array.
- _list: List.


## Example Code:

```R

# Load the package
library(OncoDataSets)

# Load a dataset
data("CA19PancreaticCancer_df")

# View the dataset
head(CA19PancreaticCancer_df)

# Load another dataset
data("CancerSmokeCity_array")

# Display the structure of the array
str(CancerSmokeCity_array)


```

## Example Datasets

Here are some example datasets included in the `OncoDataSets` package:

- CA19PancreaticCancer_df: A data frame focused on the diagnosis of pancreatic cancer using the CA19-9 biomarker.

- ColorectalMiRNAs_tbl_df: A tibble containing PubMed data of miRNAs in colorectal cancer.

- CancerSmokeCity_array: An array with lung cancer data categorized by smoking status and city.

- VALungCancer_list: A list containing VA lung cancer study data.
