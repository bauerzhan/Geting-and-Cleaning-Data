# Code book for Getting and Cleaning Data course project
author: Bauyrzhan Bekbota

## Description 
Additional information for what work with data have been done

### Source data 
A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Information about the data from source

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


### Information about the data in tidy_data.txt

There is two Identifiers 
* subject - The ID of the test subject
* activity - The type of activity 

Mesuremnts 

*"timeBodyAccelerometerMeanX" 
*"timeBodyAccelerometerMeanY" 
*"timeBodyAccelerometerMeanZ" 
*"timeBodyAccelerometerStandardDeviationX" 
*"timeBodyAccelerometerStandardDeviationY" 
*"timeBodyAccelerometerStandardDeviationZ" 
*"timeGravityAccelerometerMeanX" 
*"timeGravityAccelerometerMeanY" 
*"timeGravityAccelerometerMeanZ" 
*"timeGravityAccelerometerStandardDeviationX" 
*"timeGravityAccelerometerStandardDeviationY" 
*"timeGravityAccelerometerStandardDeviationZ" 
*"timeBodyAccelerometerJerkMeanX" 
*"timeBodyAccelerometerJerkMeanY" 
*"timeBodyAccelerometerJerkMeanZ" 
*"timeBodyAccelerometerJerkStandardDeviationX" 
*"timeBodyAccelerometerJerkStandardDeviationY" 
*"timeBodyAccelerometerJerkStandardDeviationZ" 
*"timeBodyGyroscopeMeanX" 
*"timeBodyGyroscopeMeanY" 
*"timeBodyGyroscopeMeanZ" 
*"timeBodyGyroscopeStandardDeviationX" 
*"timeBodyGyroscopeStandardDeviationY" 
*"timeBodyGyroscopeStandardDeviationZ" 
*"timeBodyGyroscopeJerkMeanX" 
*"timeBodyGyroscopeJerkMeanY" 
*"timeBodyGyroscopeJerkMeanZ" 
*"timeBodyGyroscopeJerkStandardDeviationX"
*"timeBodyGyroscopeJerkStandardDeviationY"
*"timeBodyGyroscopeJerkStandardDeviationZ" 
*"timeBodyAccelerometerMagnitudeMean" 
*"timeBodyAccelerometerMagnitudeStandardDeviation" 
*"timeGravityAccelerometerMagnitudeMean" 
*"timeGravityAccelerometerMagnitudeStandardDeviation" 
*"timeBodyAccelerometerJerkMagnitudeMean" 
*"timeBodyAccelerometerJerkMagnitudeStandardDeviation" 
*"timeBodyGyroscopeMagnitudeMean" 
*"timeBodyGyroscopeMagnitudeStandardDeviation" 
*"timeBodyGyroscopeJerkMagnitudeMean" 
*"timeBodyGyroscopeJerkMagnitudeStandardDeviation" 
*"frequencyBodyAccelerometerMeanX" 
*"frequencyBodyAccelerometerMeanY" 
*"frequencyBodyAccelerometerMeanZ" 
*"frequencyBodyAccelerometerStandardDeviationX" 
*"frequencyBodyAccelerometerStandardDeviationY" 
*"frequencyBodyAccelerometerStandardDeviationZ" 
*"frequencyBodyAccelerometerMeanFreqX" 
*"frequencyBodyAccelerometerMeanFreqY" 
*"frequencyBodyAccelerometerMeanFreqZ" 
*"frequencyBodyAccelerometerJerkMeanX" 
*"frequencyBodyAccelerometerJerkMeanY" 
*"frequencyBodyAccelerometerJerkMeanZ" 
*"frequencyBodyAccelerometerJerkStandardDeviationX" 
*"frequencyBodyAccelerometerJerkStandardDeviationY" 
*"frequencyBodyAccelerometerJerkStandardDeviationZ" 
*"frequencyBodyAccelerometerJerkMeanFreqX" 
*"frequencyBodyAccelerometerJerkMeanFreqY" 
*"frequencyBodyAccelerometerJerkMeanFreqZ" 
*"frequencyBodyGyroscopeMeanX" 
*"frequencyBodyGyroscopeMeanY" 
*"frequencyBodyGyroscopeMeanZ" 
*"frequencyBodyGyroscopeStandardDeviationX" 
*"frequencyBodyGyroscopeStandardDeviationY" 
*"frequencyBodyGyroscopeStandardDeviationZ" 
*"frequencyBodyGyroscopeMeanFreqX" 
*"frequencyBodyGyroscopeMeanFreqY" 
*"frequencyBodyGyroscopeMeanFreqZ" 
*"frequencyBodyAccelerometerMagnitudeMean" 
*"frequencyBodyAccelerometerMagnitudeStandardDeviation" 
*"frequencyBodyAccelerometerMagnitudeMeanFreq" 
*"frequencyBodyBodyAccelerometerJerkMagnitudeMean" 
*"frequencyBodyBodyAccelerometerJerkMagnitudeStandardDeviation" 
*"frequencyBodyBodyAccelerometerJerkMagnitudeMeanFreq" 
*"frequencyBodyBodyGyroscopeMagnitudeMean" 
*"frequencyBodyBodyGyroscopeMagnitudeStandardDeviation" 
*"frequencyBodyBodyGyroscopeMagnitudeMeanFreq" 
*"frequencyBodyBodyGyroscopeJerkMagnitudeMean" 
*"frequencyBodyBodyGyroscopeJerkMagnitudeStandardDeviation" 
*"frequencyBodyBodyGyroscopeJerkMagnitudeMeanFreq"

### Transformations made
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of       each variable for each activity and each subject.