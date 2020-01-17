Dataset
=======

The original dataset was collected with the Samsung Galaxy S smartphone.
Using its embedded accelerometer and gyroscope, 3-axial linear
acceleration and 3-axial angular velocity at a constant rate of 50Hz was
captured. The data originates from the UCI Machine Learning Repository.

More information about the data is available here:
<https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Link to the updated version of the data is here:
http://archive.ics.uci.edu/ml/datasets/Smartphone-Based+Recognition+of+Human+Activities+and+Postural+Transitions

Code
====

The code written for this project uses the original dataset and does the
following: 1. Downloads the data from the UCI webpage, loads relevant
packages and creates a directory. 2. Merges the training and the test
sets to create one data set. 3. Extracts only the measurements on the
mean and standard deviation for each measurement. 4. Uses descriptive
activity names to name the activities in the data set. 5. Appropriately
labels the data set with descriptive variable names. 6. From the data
set in step 4, creates a second, independent tidy data set with the
average of each variable for each activity and each subject.

Variables
=========
* `X_train`, `X_test`  - the variables in test and train samples 
* `Y_train`, `Y_test` - contain activities as numbers in test and train samples 
* `subject_train`, `subject_test` - numbers of subjects in test and train samples
* `features` - contains the variable names 
* `X`, `Y`, `subject` - contain both test and train sets united
* `mean_stddev_features` - a list containing the column numbers of variables containing mean and standard deviation for each measurement
* `new_tidy_data_sum` - contains the new tidy dataset