library(dplyr)
##File URL
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

## Creating the temporary file, downloading and unzipping the file
temp <- tempfile()
download.file(fileurl,temp)
unzip(temp)
unlink(temp)

## Reading the data from files 
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
trainingset <- read.table("./UCI HAR Dataset/train/X_train.txt")
traininglabels <- read.table("./UCI HAR Dataset/train/y_train.txt")
trainingsubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
testset <- read.table("./UCI HAR Dataset/test/X_test.txt")
testlabels <- read.table("./UCI HAR Dataset/test/y_test.txt")
testsubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
features <- read.table("./UCI HAR Dataset/features.txt")


## 
## 1. Merging the training and the test sets to create one data set.
##
traindf <- cbind(trainingsubject,traininglabels,trainingset)
testdf <- cbind(testsubject,testlabels,testset)
alldata <- rbind(traindf,testdf)
  ###removing the unsused data
  rm(list = c("traindf","testdf", "trainingsubject","traininglabels",
            "trainingset", "testsubject","testlabels","testset"))

##
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.  
##

## Assigning the descriptive names to columns
colnames(activitylabels) <- c("activityid","activitylabel")
colnames(alldata) <- c("subject","activity",as.character(features[,2]))

##Making the vector of mean and standard deviation
needcolumns <- grepl("subject|activity|mean|std", names(alldata))
## Extracting needed data
needdata <- alldata[,needcolumns]

##
## 3. Uses descriptive activity names to name the activities in the data set
##

needdata$activity <- factor(needdata$activity,
                              levels = activitylabels[, 1], 
                              labels = activitylabels[, 2])
##
## 4. Appropriately labels the data set with descriptive variable names.
##
# get column names
ncnames <- colnames(needdata)

# giving full names
ncnames <- gsub("[\\(\\)-]", "", ncnames)
ncnames <- gsub("^f", "frequency", ncnames)
ncnames <- gsub("^t", "time", ncnames)
ncnames <- gsub("Acc", "Accelerometer", ncnames)
ncnames <- gsub("Gyro", "Gyroscope", ncnames)
ncnames <- gsub("Mag", "Magnitude",ncnames)
ncnames <- gsub("mean", "Mean", ncnames)
ncnames <- gsub("std", "StandardDeviation", ncnames)

colnames(needdata) <- ncnames

##
## 5. From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.
##
tidydf <- needdata %>% group_by (subject,activity) %>% summarise_each(funs(mean))
rm(list=ls())
