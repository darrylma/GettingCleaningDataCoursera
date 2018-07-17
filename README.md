# README

The following is a step-by-step process to run the following code and produce the intended tidy datasets:

1. Open up RStudio
2. Set the working directory to the path where the run_analysis.R file is stored
3. Ensure you have reshape2 installed by typing "install.packages("reshape2")" in RStudio
4. Type "source("run_analysis.R")" into RStudio to run the script

Once the script starts running, it will:
1. Download and unpackage the dataset
2. Store all relevant txt files into data frames
3. Rename columns for all data frames
4. Remove measurements that do not contain mean() or std() from the feature datasets
5. Combine the subject, y and X as well as training and testing datasets
6. Convert the activity id's into activity names
7. Calculate means of all measurements grouped by subject and activity
8. Write result to txt file

Once the script has completed running, you will find two .csv files in the working directory:
1. mean_std_measurements.csv - compilation of the testing and training data along with activity name
                               and subject id appended to each observation. Only mean and std 
                               measurements for each observation are displayed.
2. subject_activity_means.txt - calculates mean of all measurements grouped by subject id and activity name
