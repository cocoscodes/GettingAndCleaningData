
## Run_analysis.R
## Getting and cleaning data: course project (week4)
## December 2019, L.J



library(dplyr)


## Sorting out directories & download
if(!file.exists("./CourseProject")){dir.create("./CourseProject")}
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(URL, destfile = "./CourseProject/UCIHARDataset.zip")
unzip(zipfile = "./CourseProject/UCIHARDataset.zip", exdir = "./CourseProject")
setwd("./CourseProject/UCI HAR Dataset")


## Reading in the data: 
X_train <- read.table("./train/X_train.txt")
X_test <- read.table("./test/X_test.txt")

Y_train <- read.table("./train/Y_train.txt")
Y_test <- read.table("./test/Y_test.txt")

subject_train <- read.table("./train/subject_train.txt")
subject_test <- read.table("./test/subject_test.txt")

features <- read.table("./features.txt")
activity_labels <- read.table("./activity_labels.txt")


## Merging test & train data sets: 
X <- rbind(X_train, X_test)
Y <- rbind(Y_train, Y_test)
subject <- rbind(subject_train, subject_test)


## Extracting measurements on mean and standard deviation:
#######searches for 'mean' and 'std' in variable names (features) and creates a vector 
#######containing column numbers for mean & stddev variables
#######then subsets X, so that new X will contain only mean & stddev variables
mean_stddev_features <- features[grep("mean\\(\\)|std\\(\\)",features[,2]), 1]    
X <- X[,mean_stddev_features]


## Labeling the data set with descriptive variable names:
colnames(X) <- features[mean_stddev_features,2]


## Replacing numerical activities labels with descriptive activity names:
Y <- factor(Y$V1, labels = as.character(activity_labels[,2]))


## Creating a new tidy data set, 
## with the average of each variable for subject & activity:
new_tidy_data <- cbind(subject = subject$V1, X, activity = Y)
new_tidy_data_grouped <- group_by(new_tidy_data, subject, activity) 
new_tidy_data_sum <- summarize_each(new_tidy_data_grouped, mean)

write.table(new_tidy_data_sum, file = "new_tidy_dataset_sum.txt", row.names = FALSE, col.names = TRUE)


