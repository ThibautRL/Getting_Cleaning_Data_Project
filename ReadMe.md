# Readme

## This is a Coursera assignment destined for peer review

Run_analysis.R  does the following. 
-Merges the training and the test sets to create one data set.
-Extracts only the measurements on the mean and standard deviation for each measurement. 
-Uses descriptive activity names to name the activities in the data set
-Appropriately labels the data set with descriptive variable names. 
-Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Steps to work on this course project

Download the data source to a folder on your dirve

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

unzip and you will have a UCI HAR Dataset folder.
set this folder as your working directory as follows
setwd("~/UCI HAR Dataset")

Execute run_analysis.R which will generate a tidy file into your working directory