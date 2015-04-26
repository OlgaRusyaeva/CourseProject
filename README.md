---
title: "README.md"
output: html_document
---
This is a course project to Coursera ["Getting and Cleaning data"](https://class.coursera.org/getdata-013) based on [Human Activity Recognition Using Smartphones Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Content

The repo contains the following files:

* README.md
* CodeBook.md
* run_analysis.R

Before runing a script file `run_analysis.R`, I advise to read 'CodeBook.md' to get detailed information about the data set produced by the code.

**Note**: Original dataset folder contains README.txt file, where you can get additional information about the orginal dataset.

## Pre-requirements

Software:

* install last version of R

Files:

* download and unzip [data set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
* clone this repo

In R:

* set a working directory
* put unzipped folder into the working directory
* put `run_analysis.R` into the working directory

## Rscript output

Rscript `run_analysis.R` allows you to complete the following tasks:

1. Merge the training and the test sets of the original dataset to create one dataset `mdf`
2. Extracts measurements on the mean and standard deviation for each measurement into separate data set `meanandstdDF`
3. Clarify the activities in the data set by changing the activity id number with its name
4. Label variables in the data set with descriptive names
5. Create a tidy data set `avgdf` with the average of each variable for each activity and each subject
6. Output the resulted data set into the text file `avg_ds.txt`

After the successful completion, the output tidy dataset can be found in the working directory.

## Rscript inside

Rscript is splitted on 6 parts, each contains the step-by-step procedure to complete the above tasks.

### 1. Merge the training and the test sets of the original dataset to create one dataset `mdf`

- Read the following files into dataframes:
    - `X_test.txt`
    - `X_train.txt`
    - `subject_test.txt`
    - `subject_train.txt`
    - `y_test.txt`
    - `y_train.txt`
- Combine all training data together
- Combine all test data together
- Merge training and test datasets into one `mdf`

### 2. Extracts measurements on the mean and standard deviation for each measurement into separate data set `meanandstdDF`

- Read file `features.txt` to get features names
- Get indices of the vector with fearures names that correspond to names with `mean()` and `std()` 
- Combine them, sort and move two symbols left to skip `subject_id` and `activity` columns in `mdf` dataset
- Subset dataset `meanAndstdDF` from `mdf` using found indices `meanAndstdIndex`

### 3. Clarify the activities in the data set by changing the activity id number with its name

- Read file `activity_labels.txt` to get the correspondence between activity id and activity label
- Match activity id and activity label in `mdf` and change the accoding column values

### 4. Label variables in the data set with descriptive names

Using obtained feature name vector `features` and giving names to the first two columns, `subject_id` and `activity`, set names to `mdf` dataset 

### 5. Create a tidy data set `avgdf` with the average of each variable for each activity and each subject

- Load `data.table` package
- Create new data table `avgdf` from `mdf` by grouing by `subject_id` and `activity`, and then taking mean per each variable
- Set new names to `avgdf` dataset by adding `avg_` to each varibale name

### 6. Output the resulted data set into the text file `avg_ds.txt`

Output the result dataset `avgdf` into the txt file `avg_ds.txt` in your working directory

