# UCI-HAR-Tidy-Data.
R script to create a tidy dataset from the UCI HAR Dataset.
# UCI HAR Dataset Tidy Data Analysis

This repository contains an R script (`run_analysis.R`) that processes the UCI Human Activity Recognition Using Smartphones Dataset and generates a tidy dataset (`tidy_data.txt`).

## How to Run the Script

1.  Download the UCI HAR Dataset from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip it into your working directory.
2.  Ensure that the `UCI HAR Dataset` folder is in your working directory.
3.  Open R or RStudio and set your working directory to the location of the `run_analysis.R` script and the `UCI HAR Dataset` folder.
4.  Run the script using `source("run_analysis.R")`.
5.  The tidy dataset will be saved as `tidy_data.txt` in your working directory.

## Files

* `run_analysis.R`: The R script that performs the data processing.
* `tidy_data.txt`: The resulting tidy dataset.
* `README.md`: This file.
* `CodeBook.md`: Description of the variables in tidy_data.txt.

## Code Explanation

The `run_analysis.R` script performs the following steps:

1.  Merges the training and test sets.
2.  Extracts measurements on the mean and standard deviation.
3.  Uses descriptive activity names.
4.  Labels the dataset with descriptive variable names.
5.  Creates a tidy dataset with the average of each variable for each activity and subject.
