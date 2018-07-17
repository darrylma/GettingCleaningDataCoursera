# Getting and Cleaning Data Course Project

## Purpose

The purpose of this project is to demonstrate the student's ability to collect, clean and 
perform basic data manipulation processes on a raw dataset. In this case, the following raw dataset 
was provided:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Dataset Information

This dataset was created by having 30 volunteers between the ages of 19-48 years wear a smartphone
around their waste while performing the following activities:

1. Walking
2. Walking Upstairs
3. Walking Downstairs
4. Sitting
5. Standing
6. Laying

The various measurements found in the dataset capture the body acceleration, gravity acceleration,
and body movement along the three axes. All measurements were stored in the X_test.txt and X_train.txt
files. Below is a summary of the relevant files and their content:

| Filename        | Purpose           | Content  |
| ------------- |------------| -----|
| X_train.txt   | measurements from training subjects | 561 measurements for 7,352 observations |
| X_test.txt      | measurements from testing subjects | 561 measurements for 2,947 observation |
| y_train.txt   | stores type of activity performed for each training observation | 7,352 observation |
| y_test.txt      | stores type of activity performed for each testing observation |  2,947 observations |
| subject_train.txt   | stores subject's id for each training observation | 7,352 observation |
| subject_test.txt    | stores subject's id for each testing observation |  2,947 observations |
| features.txt   | list of variable names for all measurements | 561 observation |
| activity_label.txt    | mapping of activity id to activity name |  6 observations |

For more information about the study and dataset, please refer to:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Clean Up Process

The following transformations were performed on the provided dataset with the objective of producing a tidy dataset:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Result

The following two files were created as part of the analysis:

1. mean_std_measurements.csv - compilation of the testing and training data along with activity name
                               and subject id appended to each observation. Only mean and std 
                               measurements for each observation are displayed.
2. subject_activity_means.txt - calculates mean of all measurements grouped by subject id and activity name


