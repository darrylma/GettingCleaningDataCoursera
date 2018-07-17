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
2. subject_activity_means.txt - calculates mean of all measurements grouped by subject id and activity name.
                                It contains 180 rows and 68 columns.


Below is a description of the variables found in the subject_activity_means.txt output

| # | Variable Name | Dssription |
| ------------- |------------| -----|
| 1   | subjectId | Identifies individual subjects. 30 subjects in all, numbering from 1 to 30 |
| 2      | activity | 6 levels of activities (WALKING, SITTING, etc.) |
| 3   | tBodyAcc-mean()-X | average of tBodyAcc-X grouped by subject and activity |
| 4      | tBodyAcc-mean()-Y |  average of tBodyAcc-Y grouped by subject and activity |
| 5   | tBodyAcc-mean()-Z | average of tBodyAcc-Z grouped by subject and activity |
| 6    | tBodyAcc-std()-X |  standard deviation of tBodyAcc-X grouped by subject and activity |
| 7   | tBodyAcc-std()-Y | standard deviationof tBodyAcc-Y grouped by subject and activity |
| 8    | tBodyAcc-std()-Z |  standard deviation of tBodyAcc-Z grouped by subject and activity |
| 9   | tGravityAcc-mean()-X | average of tGravityAcc-X grouped by subject and activity |
| 10      | tGravityAcc-mean()-Y |  average of tGravityAcc-Y grouped by subject and activity |
| 11   | tGravityAcc-mean()-Z | average of tGravityAcc-Z grouped by subject and activity |
| 12    | tGravityAcc-std()-X |  standard deviation of tGravityAcc-X grouped by subject and activity |
| 13   | tGravityAcc-std()-Y | standard deviationof tGravityAcc-Y grouped by subject and activity |
| 14   | tGravityAcc-std()-Z |  standard deviation of tGravityAcc-Z grouped by subject and activity |
| 15   | tBodyAccJerk-mean()-X | average of tBodyAccJerk-X grouped by subject and activity |
| 16      | tBodyAccJerk-mean()-Y |  average of tBodyAccJerk-Y grouped by subject and activity |
| 17   | tBodyAccJerk-mean()-Z | average of tBodyAccJerk-Z grouped by subject and activity |
| 18    | tBodyAccJerk-std()-X |  standard deviation of tBodyAccJerk-X grouped by subject and activity |
| 19   | tBodyAccJerk-std()-Y | standard deviationof tBodyAccJerk-Y grouped by subject and activity |
| 20   | tBodyAccJerk-std()-Z |  standard deviation of tBodyAccJerk-Z grouped by subject and activity |
| 21   | tBodyGyro-mean()-X | average of tBodyGyro-X grouped by subject and activity |
| 22      | tBodyGyro-mean()-Y |  average of tBodyGyro-Y grouped by subject and activity |
| 23   | tBodyGyro-mean()-Z | average of tBodyGyro-Z grouped by subject and activity |
| 24    | tBodyGyro-std()-X |  standard deviation of tBodyGyro-X grouped by subject and activity |
| 25   | tBodyGyro-std()-Y | standard deviationof tBodyGyro-Y grouped by subject and activity |
| 26   | tBodyGyro-std()-Z |  standard deviation of tBodyGyro-Z grouped by subject and activity |
| 27   | tBodyGyroJerk-mean()-X | average of tBodyGyroJerk-X grouped by subject and activity |
| 28      | tBodyGyroJerk-mean()-Y |  average of tBodyGyroJerk-Y grouped by subject and activity |
| 29   | tBodyGyroJerk-mean()-Z | average of tBodyGyroJerk-Z grouped by subject and activity |
| 30    | tBodyGyroJerk-std()-X |  standard deviation of tBodyGyroJerk-X grouped by subject and activity |
| 31   | tBodyGyroJerk-std()-Y | standard deviationof tBodyGyroJerk-Y grouped by subject and activity |
| 32   | tBodyGyroJerk-std()-Z |  standard deviation of tBodyGyroJerk-Z grouped by subject and activity |
| 33   | tBodyAccMag-mean() | average of tBodyAccMag grouped by subject and activity |
| 34    | tBodyAccMag-std() |  standard deviation of tBodyAccMag grouped by subject and activity |
| 35   | tGravityAccMag-mean() | average of tGravityAccMag grouped by subject and activity |
| 36    | tGravityAccMag-std() |  standard deviation of tGravityAccMag grouped by subject and activity |
| 37   | tBodyAccJerkMag-mean() | average of tBodyAccJerkMag grouped by subject and activity |
| 38    | tBodyAccJerkMag-std() |  standard deviation of tBodyAccJerkMag grouped by subject and activity |
| 39   | tBodyAccJerkMag-mean() | average of tBodyAccJerkMag grouped by subject and activity |
| 40    | tBodyAccJerkMag-std() |  standard deviation of tBodyAccJerkMag grouped by subject and activity |
| 41  | tBodyGyroJerkMag-mean() | average of tBodyGyroJerkMag grouped by subject and activity |
| 42  | tBodyGyroJerkMag-std() |  standard deviation of tBodyGyroJerkMag grouped by subject and activity |
| 43   | fBodyAcc-mean()-X | average of fBodyAcc-X grouped by subject and activity |
| 44      | fBodyAcc-mean()-Y |  average of fBodyAcc-Y grouped by subject and activity |
| 45   | fBodyAcc-mean()-Z | average of fBodyAcc-Z grouped by subject and activity |
| 46    | fBodyAcc-std()-X |  standard deviation of fBodyAcc-X grouped by subject and activity |
| 47   | fBodyAcc-std()-Y | standard deviationof fBodyAcc-Y grouped by subject and activity |
| 48   | fBodyAcc-std()-Z |  standard deviation of fBodyAcc-Z grouped by subject and activity |
| 49   | fBodyAccJerk-mean()-X | average of fBodyAccJerk-X grouped by subject and activity |
| 50      | fBodyAccJerk-mean()-Y |  average of fBodyAccJerk-Y grouped by subject and activity |
| 51   | fBodyAccJerk-mean()-Z | average of fBodyAccJerk-Z grouped by subject and activity |
| 52    | fBodyAccJerk-std()-X |  standard deviation of fBodyAccJerk-X grouped by subject and activity |
| 53   | fBodyAccJerk-std()-Y | standard deviationof fBodyAccJerk-Y grouped by subject and activity |
| 54   | fBodyAccJerk-std()-Z |  standard deviation of fBodyAccJerk-Z grouped by subject and activity |
| 55   | fBodyGyro-mean()-X | average of fBodyGyro-X grouped by subject and activity |
| 56      | fBodyGyro-mean()-Y |  average of fBodyGyro-Y grouped by subject and activity |
| 57   | fBodyGyro-mean()-Z | average of fBodyGyro-Z grouped by subject and activity |
| 58    | fBodyGyro-std()-X |  standard deviation of fBodyGyro-X grouped by subject and activity |
| 59   | fBodyGyro-std()-Y | standard deviationof fBodyGyro-Y grouped by subject and activity |
| 60   | fBodyGyro-std()-Z |  standard deviation of fBodyGyro-Z grouped by subject and activity |
| 61   | fBodyAccMag-mean() | average of fBodyAccMag grouped by subject and activity |
| 62    | fBodyAccMag-std() |  standard deviation of fBodyAccMag grouped by subject and activity |
| 63   | fBodyBodyAccJerkMag-mean() | average of fBodyBodyAccJerkMag grouped by subject and activity |
| 64    | fBodyBodyAccJerkMag-std() |  standard deviation of fBodyBodyAccJerkMag grouped by subject and activity |
| 65   | fBodyBodyGyroMag-mean() | average of fBodyBodyGyroMag grouped by subject and activity |
| 66    | fBodyBodyGyroMag-std() |  standard deviation of fBodyBodyGyroMag grouped by subject and activity |
| 67   | fBodyBodyGyroJerkMag-mean() | average of fBodyBodyGyroJerkMag grouped by subject and activity |
| 68    | fBodyBodyGyroJerkMag-std() |  standard deviation of fBodyBodyGyroJerkMag grouped by subject and activity |