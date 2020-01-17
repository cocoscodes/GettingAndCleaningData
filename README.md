Coursera 'Getting and Cleaning Data' Course Project (Week 4).
=============================================================

This repository contains the R code (run\_analysis.R), a tidy dataset
that is the output of the code (new\_tidy\_dataset\_sum), the code book
(CodeBook.md) and the ReadMe.md file for the Coursera 'Getting and
Cleaning Data' Course project.

The data
--------

The original dataset was collected with the Samsung Galaxy S smartphone.
Using its embedded accelerometer and gyroscope, 3-axial linear
acceleration and 3-axial angular velocity at a constant rate of 50Hz was
captured. The data originates from the UCI Machine Learning Repository:
<https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Files
-----

This repository contains the following files:

### Code - run\_analysis.R

The code written for this project uses the original dataset and does the
following: 
1) Merges the training and the test sets to create one data
set. 
2) Extracts only the measurements on the mean and standard
deviation for each measurement. 
3) Uses descriptive activity names to
name the activities in the data set 
4) Appropriately labels the data set
with descriptive variable names. 
5) From the data set in step 4, creates
a second, independent tidy data set with the average of each variable
for each activity and each subject.

### New Dataset - new\_tidy\_dataset.txt

The new dataset it the output of the abovementioned steps performed by
the code.

### Code Book - CodeBook.md

The Code book describes the variables, the data, and all transformations
or work that was performed to clean up the data.
