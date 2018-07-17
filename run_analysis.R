library(reshape2)

# Download and unzip directory
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "smartWatch.zip")
unzip(zipfile = "smartWatch.zip")

# Read all relevant files into data frames
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
xtest<- read.table("UCI HAR Dataset/test/X_test.txt")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt")
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Rename columns
names(xtrain) <- features[,2]
names(ytrain) <- "activity"
names(subjecttrain) <- "subjectNum"
names(xtest) <- features[,2]
names(ytest) <- "activity"
names(subjecttest) <- "subjectNum"
names(activity_labels) <- c("activityId", "activityName")

# Extract measurements containing mean() and std() in variable name for 
# both training and testing feature datasets
featuresExtract <- grep("(mean|std)\\(\\)", features[,2], value=TRUE)
xtrain <- xtrain[,featuresExtract]
xtest <- xtest[,featuresExtract]

# Concatenate subject, activity and measurement data frames 
train <- cbind(subjecttrain["subjectNum"], ytrain, xtrain)
test <- cbind(subjecttest["subjectNum"], ytest, xtest)

# Concatenate training and testing data frames
allData <- rbind(train, test)

# Convert activity ids into activity names
allData$activity <- factor(allData[,"activity"], levels = activity_labels[["activityId"]], labels = activity_labels[["activityName"]])

# Write results to a csv file
write.csv(allData, "mean_std_measurements.csv")

# Calculate means of all measurements grouped by subject and activity
allDataMelt <- melt(allData, id=c("subjectNum", "activity"))
allDataSujbectActivity <- dcast(allDataMelt, subjectNum + activity ~ variable, mean)

# Write results to a txt file
write.table(allDataSujbectActivity, "subject_activity_means.txt", row.name=FALSE)