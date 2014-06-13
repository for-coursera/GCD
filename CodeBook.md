# CodeBook for the Human Activity Recognition Project

## Description

This script analyses the results of the experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years: each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. 

The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

For more detailed information, please, refer to the [original dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

Then the run_analysis.R may be applied:
  * at first, the script checks if the working directory is set correctly and if the data files are in the same directory as the script itself;
  * then the data files are joined back;
  * then only the measurements on means and standard deviations for each measurement are selected (data frame `db` is created) and the names of variables in question are edited for better readability;
  * after that the script detects the number of volunteers, the number of performed activities, the number of variables (see below) and the final number of observations (since each person performs all the activities, it equals to the product of the number of volunteers multiplied by the number of activities);
  * next, the script creates an empty data frame (rows of the frame correspond to the number of observations, and columns correspond to the number of variables);
  * then the script fills the first two columns with subjects (volunteers) and their performed activities;
  * and after that calculates the average of each variable for each activity and each subject;
  * finally the data frame is sorted by a volunteer and then written to a new file in the working directory named `tidy.txt`.
  
## Variables

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals `tAcc-XYZ` and `tGyro-XYZ`. These time domain signals (prefix `t` to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (`tBodyAcc-XYZ` and `tGravityAcc-XYZ`) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (`tBodyAccJerk-XYZ` and `tBodyGyroJerk-XYZ`). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (`tBodyAccMag`, `tGravityAccMag`, `tBodyAccJerkMag`, `tBodyGyroMag`, `tBodyGyroJerkMag`).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing `fBodyAcc-XYZ`, `fBodyAccJerk-XYZ`, `fBodyGyro-XYZ`, `fBodyAccJerkMag`, `fBodyGyroMag`, `fBodyGyroJerkMag`. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are:
- mean: Mean value
- std: Standard deviation

  * `Subjects`
		column 1: volunteers coded by numbers (1-30)
  * `Activities`
		column 2: performed activities (`WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING` and `LAYING`)
  * `TBODYACC-MEAN-X`
		column 3
  * `TBODYACC-MEAN-Y`
		column 4
  * `TBODYACC-MEAN-Z`
		column 5  
  * `TBODYACC-STD-X`
		column 6  
  * `TBODYACC-STD-Y`
		column 7  
  * `TBODYACC-STD-Z`
		column 8  
  * `TGRAVITYACC-MEAN-X`
  * `TGRAVITYACC-MEAN-Y`
  * `TGRAVITYACC-MEAN-Z`
  * `TGRAVITYACC-STD-X`
  * `TGRAVITYACC-STD-Y`
  * `TGRAVITYACC-STD-Z`
  * `TBODYACCJERK-MEAN-X`
  * `TBODYACCJERK-MEAN-Y`
  * `TBODYACCJERK-MEAN-Z`
  * `TBODYACCJERK-STD-X`
  * `TBODYACCJERK-STD-Y`
  * `TBODYACCJERK-STD-Z`
  * `TBODYGYRO-MEAN-X`
  * `TBODYGYRO-MEAN-Y`
  * `TBODYGYRO-MEAN-Z`
  * `TBODYGYRO-STD-X`
  * `TBODYGYRO-STD-Y`
  * `TBODYGYRO-STD-Z`
  * `TBODYGYROJERK-MEAN-X`
  * `TBODYGYROJERK-MEAN-Y`
  * `TBODYGYROJERK-MEAN-Z`
  * `TBODYGYROJERK-STD-X`
  * `TBODYGYROJERK-STD-Y`
  * `TBODYGYROJERK-STD-Z`
  * `TBODYACCMAG-MEAN`
  * `TBODYACCMAG-STD`
  * `TGRAVITYACCMAG-MEAN`
  * `TGRAVITYACCMAG-STD`
  * `TBODYACCJERKMAG-MEAN`
  * `TBODYACCJERKMAG-STD`
  * `TBODYGYROMAG-MEAN`
  * `TBODYGYROMAG-STD`
  * `TBODYGYROJERKMAG-MEAN`
  * `TBODYGYROJERKMAG-STD`
  * `FBODYACC-MEAN-X`
  * `FBODYACC-MEAN-Y`
  * `FBODYACC-MEAN-Z`
  * `FBODYACC-STD-X`
  * `FBODYACC-STD-Y`
  * `FBODYACC-STD-Z`
  * `FBODYACCJERK-MEAN-X`
  * `FBODYACCJERK-MEAN-Y`
  * `FBODYACCJERK-MEAN-Z`
  * `FBODYACCJERK-STD-X`
  * `FBODYACCJERK-STD-Y`
  * `FBODYACCJERK-STD-Z`
  * `FBODYGYRO-MEAN-X`
  * `FBODYGYRO-MEAN-Y`
  * `FBODYGYRO-MEAN-Z`
  * `FBODYGYRO-STD-X`
  * `FBODYGYRO-STD-Y`
  * `FBODYGYRO-STD-Z`
  * `FBODYACCMAG-MEAN`
  * `FBODYACCMAG-STD`
  * `FBODYBODYACCJERKMAG-MEAN`
  * `FBODYBODYACCJERKMAG-STD`
  * `FBODYBODYGYROMAG-MEAN`
  * `FBODYBODYGYROMAG-STD`
  * `FBODYBODYGYROJERKMAG-MEAN`
  * `FBODYBODYGYROJERKMAG-STD`