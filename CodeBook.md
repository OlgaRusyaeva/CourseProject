---
title: "CodeBook.md"
output: html_document
---

This is a course project to Coursera ["Getting and Cleaning data"](https://class.coursera.org/getdata-013) based on [Human Activity Recognition Using Smartphones Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


This file contains a data dictionary for an output dataset `avg_ds`. 

The order is preserved.

Each record has:

"Name" - Description - Range of allowed values

##Data dictionary

"subject_id" - An identifier of the subject who carried out the experiment - [1:30]

"activity"  - The name of the activity - [WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING]

The rest varibales are summarised here:

## Preliminary description

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  


# Feauter variables

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

In the datasets they are represented by seprate variables.

tBodyAcc-XYZ - the body acceleration signals in time domain

tGravityAcc-XYZ - the gravity acceleration signals in time domain

tBodyAccJerk-XYZ - the body linear acceleration signals in time domain

tBodyGyro-XYZ - the body velocity in time domain

tBodyGyroJerk-XYZ - the angular body velocity in time domain

tBodyAccMag - the magnitude of the body acceleration signals in time domain

tGravityAccMag - the magnitude of the gravity acceleration signals in time domain

tBodyAccJerkMag - the magnitude of the body linear acceleration signals in time domain

tBodyGyroMag - the magnitude of the body velocity in time domain

tBodyGyroJerkMag - the magnitude of the angular body velocity in time domain

fBodyAcc-XYZ - the body acceleration signals in frequency domain

fBodyAccJerk-XYZ - the gravity acceleration signals in frequency domain

fBodyGyro-XYZ - the body linear acceleration signals in frequency domain

fBodyAccMag - the magnitude of the body acceleration signals in frequency domain

fBodyAccJerkMag - the magnitude of the body linear acceleration signals in frequency domain

fBodyGyroMag - the magnitude of the body velocity in frequency domain

fBodyGyroJerkMag - the magnitude of the angular body velocity in frequency domain

The set of variables that were estimated from these signals are: 

mean() - Mean value -  [-1,1]

std() - Standard deviation -  [-1,1]

mad() - Median absolute deviation -  [-1,1]

max() - Largest value in array -  [-1,1]

min() - Smallest value in array -  [-1,1]

sma() - Signal magnitude area -  [-1,1]

energy() - Energy measure. Sum of the squares divided by the number of values. -  [-1,1]

iqr() - Interquartile range -  [-1,1]

entropy() - Signal entropy -  [-1,1]

arCoeff() - Autorregresion coefficients with Burg order equal to 4 -  [-1,1]

correlation() - correlation coefficient between two signals -  [-1,1]

maxInds() - index of the frequency component with largest magnitude -  [-1,1]

meanFreq() - Weighted average of the frequency components to obtain a mean frequency -  [-1,1]

abskewness() - skewness of the frequency domain signal -  [-1,1]

kurtosis() - kurtosis of the frequency domain signal -  [-1,1]

bandsEnergy() - Energy of a frequency interval within the 64 bins of the FFT of each window. -  [-1,1]

angle() - Angle between to vectors. -  [-1,1]

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean

tBodyAccMean

tBodyAccJerkMean

tBodyGyroMean

tBodyGyroJerkMean

**Note**: This part of the code book is taken from `feature_info.txt` file

## Dataset rest variables

By averaging each variable described above the varibles of `adf_ds` are obtained. 

Their labels are summarised below:

"avg_tBodyAcc-mean()-X"

"avg_tBodyAcc-mean()-Y"

"avg_tBodyAcc-mean()-Z"

"avg_tBodyAcc-std()-X"

"avg_tBodyAcc-std()-Y"

"avg_tBodyAcc-std()-Z"

"avg_tBodyAcc-mad()-X"

"avg_tBodyAcc-mad()-Y"

"avg_tBodyAcc-mad()-Z"

"avg_tBodyAcc-max()-X"

"avg_tBodyAcc-max()-Y"

"avg_tBodyAcc-max()-Z"

"avg_tBodyAcc-min()-X"

"avg_tBodyAcc-min()-Y"

"avg_tBodyAcc-min()-Z"

"avg_tBodyAcc-sma()"

"avg_tBodyAcc-energy()-X"

"avg_tBodyAcc-energy()-Y"

"avg_tBodyAcc-energy()-Z"

"avg_tBodyAcc-iqr()-X"

"avg_tBodyAcc-iqr()-Y"

"avg_tBodyAcc-iqr()-Z"

"avg_tBodyAcc-entropy()-X"

"avg_tBodyAcc-entropy()-Y"

"avg_tBodyAcc-entropy()-Z"

"avg_tBodyAcc-arCoeff()-X,1"

"avg_tBodyAcc-arCoeff()-X,2"

"avg_tBodyAcc-arCoeff()-X,3"

"avg_tBodyAcc-arCoeff()-X,4"

"avg_tBodyAcc-arCoeff()-Y,1"

"avg_tBodyAcc-arCoeff()-Y,2"

"avg_tBodyAcc-arCoeff()-Y,3"

"avg_tBodyAcc-arCoeff()-Y,4"

"avg_tBodyAcc-arCoeff()-Z,1"

"avg_tBodyAcc-arCoeff()-Z,2"

"avg_tBodyAcc-arCoeff()-Z,3"

"avg_tBodyAcc-arCoeff()-Z,4"

"avg_tBodyAcc-correlation()-X,Y"

"avg_tBodyAcc-correlation()-X,Z"

"avg_tBodyAcc-correlation()-Y,Z"

"avg_tGravityAcc-mean()-X"

"avg_tGravityAcc-mean()-Y"

"avg_tGravityAcc-mean()-Z"

"avg_tGravityAcc-std()-X"

"avg_tGravityAcc-std()-Y"

"avg_tGravityAcc-std()-Z"

"avg_tGravityAcc-mad()-X"

"avg_tGravityAcc-mad()-Y"

"avg_tGravityAcc-mad()-Z"

"avg_tGravityAcc-max()-X"

"avg_tGravityAcc-max()-Y"

"avg_tGravityAcc-max()-Z"

"avg_tGravityAcc-min()-X"

"avg_tGravityAcc-min()-Y"

"avg_tGravityAcc-min()-Z"

"avg_tGravityAcc-sma()"

"avg_tGravityAcc-energy()-X"

"avg_tGravityAcc-energy()-Y"

"avg_tGravityAcc-energy()-Z"

"avg_tGravityAcc-iqr()-X"

"avg_tGravityAcc-iqr()-Y"

"avg_tGravityAcc-iqr()-Z"

"avg_tGravityAcc-entropy()-X"

"avg_tGravityAcc-entropy()-Y"

"avg_tGravityAcc-entropy()-Z"

"avg_tGravityAcc-arCoeff()-X,1"

"avg_tGravityAcc-arCoeff()-X,2"

"avg_tGravityAcc-arCoeff()-X,3"

"avg_tGravityAcc-arCoeff()-X,4"

"avg_tGravityAcc-arCoeff()-Y,1"

"avg_tGravityAcc-arCoeff()-Y,2"

"avg_tGravityAcc-arCoeff()-Y,3"

"avg_tGravityAcc-arCoeff()-Y,4"

"avg_tGravityAcc-arCoeff()-Z,1"

"avg_tGravityAcc-arCoeff()-Z,2"

"avg_tGravityAcc-arCoeff()-Z,3"

"avg_tGravityAcc-arCoeff()-Z,4"

"avg_tGravityAcc-correlation()-X,Y"

"avg_tGravityAcc-correlation()-X,Z"

"avg_tGravityAcc-correlation()-Y,Z"

"avg_tBodyAccJerk-mean()-X"

"avg_tBodyAccJerk-mean()-Y"

"avg_tBodyAccJerk-mean()-Z"

"avg_tBodyAccJerk-std()-X"

"avg_tBodyAccJerk-std()-Y"

"avg_tBodyAccJerk-std()-Z"

"avg_tBodyAccJerk-mad()-X"

"avg_tBodyAccJerk-mad()-Y"

"avg_tBodyAccJerk-mad()-Z"

"avg_tBodyAccJerk-max()-X"

"avg_tBodyAccJerk-max()-Y"

"avg_tBodyAccJerk-max()-Z"

"avg_tBodyAccJerk-min()-X"

"avg_tBodyAccJerk-min()-Y"

"avg_tBodyAccJerk-min()-Z"

"avg_tBodyAccJerk-sma()"

"avg_tBodyAccJerk-energy()-X"

"avg_tBodyAccJerk-energy()-Y"

"avg_tBodyAccJerk-energy()-Z"

"avg_tBodyAccJerk-iqr()-X"

"avg_tBodyAccJerk-iqr()-Y"

"avg_tBodyAccJerk-iqr()-Z"

"avg_tBodyAccJerk-entropy()-X"

"avg_tBodyAccJerk-entropy()-Y"

"avg_tBodyAccJerk-entropy()-Z"

"avg_tBodyAccJerk-arCoeff()-X,1"

"avg_tBodyAccJerk-arCoeff()-X,2"

"avg_tBodyAccJerk-arCoeff()-X,3"

"avg_tBodyAccJerk-arCoeff()-X,4"

"avg_tBodyAccJerk-arCoeff()-Y,1"

"avg_tBodyAccJerk-arCoeff()-Y,2"

"avg_tBodyAccJerk-arCoeff()-Y,3"

"avg_tBodyAccJerk-arCoeff()-Y,4"

"avg_tBodyAccJerk-arCoeff()-Z,1"

"avg_tBodyAccJerk-arCoeff()-Z,2"

"avg_tBodyAccJerk-arCoeff()-Z,3"

"avg_tBodyAccJerk-arCoeff()-Z,4"

"avg_tBodyAccJerk-correlation()-X,Y"

"avg_tBodyAccJerk-correlation()-X,Z"

"avg_tBodyAccJerk-correlation()-Y,Z"

"avg_tBodyGyro-mean()-X"

"avg_tBodyGyro-mean()-Y"

"avg_tBodyGyro-mean()-Z"

"avg_tBodyGyro-std()-X"

"avg_tBodyGyro-std()-Y"

"avg_tBodyGyro-std()-Z"

"avg_tBodyGyro-mad()-X"

"avg_tBodyGyro-mad()-Y"

"avg_tBodyGyro-mad()-Z"

"avg_tBodyGyro-max()-X"

"avg_tBodyGyro-max()-Y"

"avg_tBodyGyro-max()-Z"

"avg_tBodyGyro-min()-X"

"avg_tBodyGyro-min()-Y"

"avg_tBodyGyro-min()-Z"

"avg_tBodyGyro-sma()"

"avg_tBodyGyro-energy()-X"

"avg_tBodyGyro-energy()-Y"

"avg_tBodyGyro-energy()-Z"

"avg_tBodyGyro-iqr()-X"

"avg_tBodyGyro-iqr()-Y"

"avg_tBodyGyro-iqr()-Z"

"avg_tBodyGyro-entropy()-X"

"avg_tBodyGyro-entropy()-Y"

"avg_tBodyGyro-entropy()-Z"

"avg_tBodyGyro-arCoeff()-X,1"

"avg_tBodyGyro-arCoeff()-X,2"

"avg_tBodyGyro-arCoeff()-X,3"

"avg_tBodyGyro-arCoeff()-X,4"

"avg_tBodyGyro-arCoeff()-Y,1"

"avg_tBodyGyro-arCoeff()-Y,2"

"avg_tBodyGyro-arCoeff()-Y,3"

"avg_tBodyGyro-arCoeff()-Y,4"

"avg_tBodyGyro-arCoeff()-Z,1"

"avg_tBodyGyro-arCoeff()-Z,2"

"avg_tBodyGyro-arCoeff()-Z,3"

"avg_tBodyGyro-arCoeff()-Z,4"

"avg_tBodyGyro-correlation()-X,Y"

"avg_tBodyGyro-correlation()-X,Z"

"avg_tBodyGyro-correlation()-Y,Z"

"avg_tBodyGyroJerk-mean()-X"

"avg_tBodyGyroJerk-mean()-Y"

"avg_tBodyGyroJerk-mean()-Z"

"avg_tBodyGyroJerk-std()-X"

"avg_tBodyGyroJerk-std()-Y"

"avg_tBodyGyroJerk-std()-Z"

"avg_tBodyGyroJerk-mad()-X"

"avg_tBodyGyroJerk-mad()-Y"

"avg_tBodyGyroJerk-mad()-Z"

"avg_tBodyGyroJerk-max()-X"

"avg_tBodyGyroJerk-max()-Y"

"avg_tBodyGyroJerk-max()-Z"

"avg_tBodyGyroJerk-min()-X"

"avg_tBodyGyroJerk-min()-Y"

"avg_tBodyGyroJerk-min()-Z"

"avg_tBodyGyroJerk-sma()"

"avg_tBodyGyroJerk-energy()-X"

"avg_tBodyGyroJerk-energy()-Y"

"avg_tBodyGyroJerk-energy()-Z"

"avg_tBodyGyroJerk-iqr()-X"

"avg_tBodyGyroJerk-iqr()-Y"

"avg_tBodyGyroJerk-iqr()-Z"

"avg_tBodyGyroJerk-entropy()-X"

"avg_tBodyGyroJerk-entropy()-Y"

"avg_tBodyGyroJerk-entropy()-Z"

"avg_tBodyGyroJerk-arCoeff()-X,1"

"avg_tBodyGyroJerk-arCoeff()-X,2"

"avg_tBodyGyroJerk-arCoeff()-X,3"

"avg_tBodyGyroJerk-arCoeff()-X,4"

"avg_tBodyGyroJerk-arCoeff()-Y,1"

"avg_tBodyGyroJerk-arCoeff()-Y,2"

"avg_tBodyGyroJerk-arCoeff()-Y,3"

"avg_tBodyGyroJerk-arCoeff()-Y,4"

"avg_tBodyGyroJerk-arCoeff()-Z,1"

"avg_tBodyGyroJerk-arCoeff()-Z,2"

"avg_tBodyGyroJerk-arCoeff()-Z,3"

"avg_tBodyGyroJerk-arCoeff()-Z,4"

"avg_tBodyGyroJerk-correlation()-X,Y"

"avg_tBodyGyroJerk-correlation()-X,Z"

"avg_tBodyGyroJerk-correlation()-Y,Z"

"avg_tBodyAccMag-mean()"

"avg_tBodyAccMag-std()"

"avg_tBodyAccMag-mad()"

"avg_tBodyAccMag-max()"

"avg_tBodyAccMag-min()"

"avg_tBodyAccMag-sma()"

"avg_tBodyAccMag-energy()"

"avg_tBodyAccMag-iqr()"

"avg_tBodyAccMag-entropy()"

"avg_tBodyAccMag-arCoeff()1"

"avg_tBodyAccMag-arCoeff()2"

"avg_tBodyAccMag-arCoeff()3"

"avg_tBodyAccMag-arCoeff()4"

"avg_tGravityAccMag-mean()"

"avg_tGravityAccMag-std()"

"avg_tGravityAccMag-mad()"

"avg_tGravityAccMag-max()"

"avg_tGravityAccMag-min()"

"avg_tGravityAccMag-sma()"

"avg_tGravityAccMag-energy()"

"avg_tGravityAccMag-iqr()"

"avg_tGravityAccMag-entropy()"

"avg_tGravityAccMag-arCoeff()1"

"avg_tGravityAccMag-arCoeff()2"

"avg_tGravityAccMag-arCoeff()3"

"avg_tGravityAccMag-arCoeff()4"

"avg_tBodyAccJerkMag-mean()"

"avg_tBodyAccJerkMag-std()"

"avg_tBodyAccJerkMag-mad()"

"avg_tBodyAccJerkMag-max()"

"avg_tBodyAccJerkMag-min()"

"avg_tBodyAccJerkMag-sma()"

"avg_tBodyAccJerkMag-energy()"

"avg_tBodyAccJerkMag-iqr()"

"avg_tBodyAccJerkMag-entropy()"

"avg_tBodyAccJerkMag-arCoeff()1"

"avg_tBodyAccJerkMag-arCoeff()2"

"avg_tBodyAccJerkMag-arCoeff()3"

"avg_tBodyAccJerkMag-arCoeff()4"

"avg_tBodyGyroMag-mean()"

"avg_tBodyGyroMag-std()"

"avg_tBodyGyroMag-mad()"

"avg_tBodyGyroMag-max()"

"avg_tBodyGyroMag-min()"

"avg_tBodyGyroMag-sma()"

"avg_tBodyGyroMag-energy()"

"avg_tBodyGyroMag-iqr()"

"avg_tBodyGyroMag-entropy()"

"avg_tBodyGyroMag-arCoeff()1"

"avg_tBodyGyroMag-arCoeff()2"

"avg_tBodyGyroMag-arCoeff()3"

"avg_tBodyGyroMag-arCoeff()4"

"avg_tBodyGyroJerkMag-mean()"

"avg_tBodyGyroJerkMag-std()"

"avg_tBodyGyroJerkMag-mad()"

"avg_tBodyGyroJerkMag-max()"

"avg_tBodyGyroJerkMag-min()"

"avg_tBodyGyroJerkMag-sma()"

"avg_tBodyGyroJerkMag-energy()"

"avg_tBodyGyroJerkMag-iqr()"

"avg_tBodyGyroJerkMag-entropy()"

"avg_tBodyGyroJerkMag-arCoeff()1"

"avg_tBodyGyroJerkMag-arCoeff()2"

"avg_tBodyGyroJerkMag-arCoeff()3"

"avg_tBodyGyroJerkMag-arCoeff()4"

"avg_fBodyAcc-mean()-X"

"avg_fBodyAcc-mean()-Y"

"avg_fBodyAcc-mean()-Z"

"avg_fBodyAcc-std()-X"

"avg_fBodyAcc-std()-Y"

"avg_fBodyAcc-std()-Z"

"avg_fBodyAcc-mad()-X"

"avg_fBodyAcc-mad()-Y"

"avg_fBodyAcc-mad()-Z"

"avg_fBodyAcc-max()-X"

"avg_fBodyAcc-max()-Y"

"avg_fBodyAcc-max()-Z"

"avg_fBodyAcc-min()-X"

"avg_fBodyAcc-min()-Y"

"avg_fBodyAcc-min()-Z"

"avg_fBodyAcc-sma()"

"avg_fBodyAcc-energy()-X"

"avg_fBodyAcc-energy()-Y"

"avg_fBodyAcc-energy()-Z"

"avg_fBodyAcc-iqr()-X"

"avg_fBodyAcc-iqr()-Y"

"avg_fBodyAcc-iqr()-Z"

"avg_fBodyAcc-entropy()-X"

"avg_fBodyAcc-entropy()-Y"

"avg_fBodyAcc-entropy()-Z"

"avg_fBodyAcc-maxInds-X"

"avg_fBodyAcc-maxInds-Y"

"avg_fBodyAcc-maxInds-Z"

"avg_fBodyAcc-meanFreq()-X"

"avg_fBodyAcc-meanFreq()-Y"

"avg_fBodyAcc-meanFreq()-Z"

"avg_fBodyAcc-skewness()-X"

"avg_fBodyAcc-kurtosis()-X"

"avg_fBodyAcc-skewness()-Y"

"avg_fBodyAcc-kurtosis()-Y"

"avg_fBodyAcc-skewness()-Z"

"avg_fBodyAcc-kurtosis()-Z"

"avg_fBodyAcc-bandsEnergy()-1,8"

"avg_fBodyAcc-bandsEnergy()-9,16"

"avg_fBodyAcc-bandsEnergy()-17,24"

"avg_fBodyAcc-bandsEnergy()-25,32"

"avg_fBodyAcc-bandsEnergy()-33,40"

"avg_fBodyAcc-bandsEnergy()-41,48"

"avg_fBodyAcc-bandsEnergy()-49,56"

"avg_fBodyAcc-bandsEnergy()-57,64"

"avg_fBodyAcc-bandsEnergy()-1,16"

"avg_fBodyAcc-bandsEnergy()-17,32"

"avg_fBodyAcc-bandsEnergy()-33,48"

"avg_fBodyAcc-bandsEnergy()-49,64"

"avg_fBodyAcc-bandsEnergy()-1,24"

"avg_fBodyAcc-bandsEnergy()-25,48"

"avg_fBodyAcc-bandsEnergy()-1,8"

"avg_fBodyAcc-bandsEnergy()-9,16"

"avg_fBodyAcc-bandsEnergy()-17,24"

"avg_fBodyAcc-bandsEnergy()-25,32"

"avg_fBodyAcc-bandsEnergy()-33,40"

"avg_fBodyAcc-bandsEnergy()-41,48"

"avg_fBodyAcc-bandsEnergy()-49,56"

"avg_fBodyAcc-bandsEnergy()-57,64"

"avg_fBodyAcc-bandsEnergy()-1,16"

"avg_fBodyAcc-bandsEnergy()-17,32"

"avg_fBodyAcc-bandsEnergy()-33,48"

"avg_fBodyAcc-bandsEnergy()-49,64"

"avg_fBodyAcc-bandsEnergy()-1,24"

"avg_fBodyAcc-bandsEnergy()-25,48"

"avg_fBodyAcc-bandsEnergy()-1,8"

"avg_fBodyAcc-bandsEnergy()-9,16"

"avg_fBodyAcc-bandsEnergy()-17,24"

"avg_fBodyAcc-bandsEnergy()-25,32"

"avg_fBodyAcc-bandsEnergy()-33,40"

"avg_fBodyAcc-bandsEnergy()-41,48"

"avg_fBodyAcc-bandsEnergy()-49,56"

"avg_fBodyAcc-bandsEnergy()-57,64"

"avg_fBodyAcc-bandsEnergy()-1,16"

"avg_fBodyAcc-bandsEnergy()-17,32"

"avg_fBodyAcc-bandsEnergy()-33,48"

"avg_fBodyAcc-bandsEnergy()-49,64"

"avg_fBodyAcc-bandsEnergy()-1,24"

"avg_fBodyAcc-bandsEnergy()-25,48"

"avg_fBodyAccJerk-mean()-X"

"avg_fBodyAccJerk-mean()-Y"

"avg_fBodyAccJerk-mean()-Z"

"avg_fBodyAccJerk-std()-X"

"avg_fBodyAccJerk-std()-Y"

"avg_fBodyAccJerk-std()-Z"

"avg_fBodyAccJerk-mad()-X"

"avg_fBodyAccJerk-mad()-Y"

"avg_fBodyAccJerk-mad()-Z"

"avg_fBodyAccJerk-max()-X"

"avg_fBodyAccJerk-max()-Y"

"avg_fBodyAccJerk-max()-Z"

"avg_fBodyAccJerk-min()-X"

"avg_fBodyAccJerk-min()-Y"

"avg_fBodyAccJerk-min()-Z"

"avg_fBodyAccJerk-sma()"

"avg_fBodyAccJerk-energy()-X"

"avg_fBodyAccJerk-energy()-Y"

"avg_fBodyAccJerk-energy()-Z"

"avg_fBodyAccJerk-iqr()-X"

"avg_fBodyAccJerk-iqr()-Y"

"avg_fBodyAccJerk-iqr()-Z"

"avg_fBodyAccJerk-entropy()-X"

"avg_fBodyAccJerk-entropy()-Y"

"avg_fBodyAccJerk-entropy()-Z"

"avg_fBodyAccJerk-maxInds-X"

"avg_fBodyAccJerk-maxInds-Y"

"avg_fBodyAccJerk-maxInds-Z"

"avg_fBodyAccJerk-meanFreq()-X"

"avg_fBodyAccJerk-meanFreq()-Y"

"avg_fBodyAccJerk-meanFreq()-Z"

"avg_fBodyAccJerk-skewness()-X"

"avg_fBodyAccJerk-kurtosis()-X"

"avg_fBodyAccJerk-skewness()-Y"

"avg_fBodyAccJerk-kurtosis()-Y"

"avg_fBodyAccJerk-skewness()-Z"

"avg_fBodyAccJerk-kurtosis()-Z"

"avg_fBodyAccJerk-bandsEnergy()-1,8"

"avg_fBodyAccJerk-bandsEnergy()-9,16"

"avg_fBodyAccJerk-bandsEnergy()-17,24"

"avg_fBodyAccJerk-bandsEnergy()-25,32"

"avg_fBodyAccJerk-bandsEnergy()-33,40"

"avg_fBodyAccJerk-bandsEnergy()-41,48"

"avg_fBodyAccJerk-bandsEnergy()-49,56"

"avg_fBodyAccJerk-bandsEnergy()-57,64"

"avg_fBodyAccJerk-bandsEnergy()-1,16"

"avg_fBodyAccJerk-bandsEnergy()-17,32"

"avg_fBodyAccJerk-bandsEnergy()-33,48"

"avg_fBodyAccJerk-bandsEnergy()-49,64"

"avg_fBodyAccJerk-bandsEnergy()-1,24"

"avg_fBodyAccJerk-bandsEnergy()-25,48"

"avg_fBodyAccJerk-bandsEnergy()-1,8"

"avg_fBodyAccJerk-bandsEnergy()-9,16"

"avg_fBodyAccJerk-bandsEnergy()-17,24"

"avg_fBodyAccJerk-bandsEnergy()-25,32"

"avg_fBodyAccJerk-bandsEnergy()-33,40"

"avg_fBodyAccJerk-bandsEnergy()-41,48"

"avg_fBodyAccJerk-bandsEnergy()-49,56"

"avg_fBodyAccJerk-bandsEnergy()-57,64"

"avg_fBodyAccJerk-bandsEnergy()-1,16"

"avg_fBodyAccJerk-bandsEnergy()-17,32"

"avg_fBodyAccJerk-bandsEnergy()-33,48"

"avg_fBodyAccJerk-bandsEnergy()-49,64"

"avg_fBodyAccJerk-bandsEnergy()-1,24"

"avg_fBodyAccJerk-bandsEnergy()-25,48"

"avg_fBodyAccJerk-bandsEnergy()-1,8"

"avg_fBodyAccJerk-bandsEnergy()-9,16"

"avg_fBodyAccJerk-bandsEnergy()-17,24"

"avg_fBodyAccJerk-bandsEnergy()-25,32"

"avg_fBodyAccJerk-bandsEnergy()-33,40"

"avg_fBodyAccJerk-bandsEnergy()-41,48"

"avg_fBodyAccJerk-bandsEnergy()-49,56"

"avg_fBodyAccJerk-bandsEnergy()-57,64"

"avg_fBodyAccJerk-bandsEnergy()-1,16"

"avg_fBodyAccJerk-bandsEnergy()-17,32"

"avg_fBodyAccJerk-bandsEnergy()-33,48"

"avg_fBodyAccJerk-bandsEnergy()-49,64"

"avg_fBodyAccJerk-bandsEnergy()-1,24"

"avg_fBodyAccJerk-bandsEnergy()-25,48"

"avg_fBodyGyro-mean()-X"

"avg_fBodyGyro-mean()-Y"

"avg_fBodyGyro-mean()-Z"

"avg_fBodyGyro-std()-X"

"avg_fBodyGyro-std()-Y"

"avg_fBodyGyro-std()-Z"

"avg_fBodyGyro-mad()-X"

"avg_fBodyGyro-mad()-Y"

"avg_fBodyGyro-mad()-Z"

"avg_fBodyGyro-max()-X"

"avg_fBodyGyro-max()-Y"

"avg_fBodyGyro-max()-Z"

"avg_fBodyGyro-min()-X"

"avg_fBodyGyro-min()-Y"

"avg_fBodyGyro-min()-Z"

"avg_fBodyGyro-sma()"

"avg_fBodyGyro-energy()-X"

"avg_fBodyGyro-energy()-Y"

"avg_fBodyGyro-energy()-Z"

"avg_fBodyGyro-iqr()-X"

"avg_fBodyGyro-iqr()-Y"

"avg_fBodyGyro-iqr()-Z"

"avg_fBodyGyro-entropy()-X"

"avg_fBodyGyro-entropy()-Y"

"avg_fBodyGyro-entropy()-Z"

"avg_fBodyGyro-maxInds-X"

"avg_fBodyGyro-maxInds-Y"

"avg_fBodyGyro-maxInds-Z"

"avg_fBodyGyro-meanFreq()-X"

"avg_fBodyGyro-meanFreq()-Y"

"avg_fBodyGyro-meanFreq()-Z"

"avg_fBodyGyro-skewness()-X"

"avg_fBodyGyro-kurtosis()-X"

"avg_fBodyGyro-skewness()-Y"

"avg_fBodyGyro-kurtosis()-Y"

"avg_fBodyGyro-skewness()-Z"

"avg_fBodyGyro-kurtosis()-Z"

"avg_fBodyGyro-bandsEnergy()-1,8"

"avg_fBodyGyro-bandsEnergy()-9,16"

"avg_fBodyGyro-bandsEnergy()-17,24"

"avg_fBodyGyro-bandsEnergy()-25,32"

"avg_fBodyGyro-bandsEnergy()-33,40"

"avg_fBodyGyro-bandsEnergy()-41,48"

"avg_fBodyGyro-bandsEnergy()-49,56"

"avg_fBodyGyro-bandsEnergy()-57,64"

"avg_fBodyGyro-bandsEnergy()-1,16"

"avg_fBodyGyro-bandsEnergy()-17,32"

"avg_fBodyGyro-bandsEnergy()-33,48"

"avg_fBodyGyro-bandsEnergy()-49,64"

"avg_fBodyGyro-bandsEnergy()-1,24"

"avg_fBodyGyro-bandsEnergy()-25,48"

"avg_fBodyGyro-bandsEnergy()-1,8"

"avg_fBodyGyro-bandsEnergy()-9,16"

"avg_fBodyGyro-bandsEnergy()-17,24"

"avg_fBodyGyro-bandsEnergy()-25,32"

"avg_fBodyGyro-bandsEnergy()-33,40"

"avg_fBodyGyro-bandsEnergy()-41,48"

"avg_fBodyGyro-bandsEnergy()-49,56"

"avg_fBodyGyro-bandsEnergy()-57,64"

"avg_fBodyGyro-bandsEnergy()-1,16"

"avg_fBodyGyro-bandsEnergy()-17,32"

"avg_fBodyGyro-bandsEnergy()-33,48"

"avg_fBodyGyro-bandsEnergy()-49,64"

"avg_fBodyGyro-bandsEnergy()-1,24"

"avg_fBodyGyro-bandsEnergy()-25,48"

"avg_fBodyGyro-bandsEnergy()-1,8"

"avg_fBodyGyro-bandsEnergy()-9,16"

"avg_fBodyGyro-bandsEnergy()-17,24"

"avg_fBodyGyro-bandsEnergy()-25,32"

"avg_fBodyGyro-bandsEnergy()-33,40"

"avg_fBodyGyro-bandsEnergy()-41,48"

"avg_fBodyGyro-bandsEnergy()-49,56"

"avg_fBodyGyro-bandsEnergy()-57,64"

"avg_fBodyGyro-bandsEnergy()-1,16"

"avg_fBodyGyro-bandsEnergy()-17,32"

"avg_fBodyGyro-bandsEnergy()-33,48"

"avg_fBodyGyro-bandsEnergy()-49,64"

"avg_fBodyGyro-bandsEnergy()-1,24"

"avg_fBodyGyro-bandsEnergy()-25,48"

"avg_fBodyAccMag-mean()"

"avg_fBodyAccMag-std()"

"avg_fBodyAccMag-mad()"

"avg_fBodyAccMag-max()"

"avg_fBodyAccMag-min()"

"avg_fBodyAccMag-sma()"

"avg_fBodyAccMag-energy()"

"avg_fBodyAccMag-iqr()"

"avg_fBodyAccMag-entropy()"

"avg_fBodyAccMag-maxInds"

"avg_fBodyAccMag-meanFreq()"

"avg_fBodyAccMag-skewness()"

"avg_fBodyAccMag-kurtosis()"

"avg_fBodyBodyAccJerkMag-mean()"

"avg_fBodyBodyAccJerkMag-std()"

"avg_fBodyBodyAccJerkMag-mad()"

"avg_fBodyBodyAccJerkMag-max()"

"avg_fBodyBodyAccJerkMag-min()"

"avg_fBodyBodyAccJerkMag-sma()"

"avg_fBodyBodyAccJerkMag-energy()"

"avg_fBodyBodyAccJerkMag-iqr()"

"avg_fBodyBodyAccJerkMag-entropy()"

"avg_fBodyBodyAccJerkMag-maxInds"

"avg_fBodyBodyAccJerkMag-meanFreq()"

"avg_fBodyBodyAccJerkMag-skewness()"

"avg_fBodyBodyAccJerkMag-kurtosis()"

"avg_fBodyBodyGyroMag-mean()"

"avg_fBodyBodyGyroMag-std()"

"avg_fBodyBodyGyroMag-mad()"

"avg_fBodyBodyGyroMag-max()"

"avg_fBodyBodyGyroMag-min()"

"avg_fBodyBodyGyroMag-sma()"

"avg_fBodyBodyGyroMag-energy()"

"avg_fBodyBodyGyroMag-iqr()"

"avg_fBodyBodyGyroMag-entropy()"

"avg_fBodyBodyGyroMag-maxInds"

"avg_fBodyBodyGyroMag-meanFreq()"

"avg_fBodyBodyGyroMag-skewness()"

"avg_fBodyBodyGyroMag-kurtosis()"

"avg_fBodyBodyGyroJerkMag-mean()"

"avg_fBodyBodyGyroJerkMag-std()"

"avg_fBodyBodyGyroJerkMag-mad()"

"avg_fBodyBodyGyroJerkMag-max()"

"avg_fBodyBodyGyroJerkMag-min()"

"avg_fBodyBodyGyroJerkMag-sma()"

"avg_fBodyBodyGyroJerkMag-energy()"

"avg_fBodyBodyGyroJerkMag-iqr()"

"avg_fBodyBodyGyroJerkMag-entropy()"

"avg_fBodyBodyGyroJerkMag-maxInds"

"avg_fBodyBodyGyroJerkMag-meanFreq()"

"avg_fBodyBodyGyroJerkMag-skewness()"

"avg_fBodyBodyGyroJerkMag-kurtosis()"

"avg_angle(tBodyAccMean,gravity)"

"avg_angle(tBodyAccJerkMean),gravityMean)"

"avg_angle(tBodyGyroMean,gravityMean)"

"avg_angle(tBodyGyroJerkMean,gravityMean)"

"avg_angle(X,gravityMean)"

"avg_angle(Y,gravityMean)"

"avg_angle(Z,gravityMean)"


