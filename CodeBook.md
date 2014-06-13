# CodeBook for the Human Activity Recognition Project

## Description

This script analyses the results of the experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years: each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. 

The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

For more detailed information, please, refer to the [original dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The script run_analysis.R proceeds as follows:
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
  * mean: Mean value
  * std: Standard deviation

#### Additional details:

  * `Subjects`
  
> column 1: volunteers coded by numbers (1-30)
		
  * `Activities`
  
> column 2: performed activities (`WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING` and `LAYING`)

  * `TBODYACC-MEAN-X`
  
> column 3

  * `TBODYACC-MEAN-Y`
  
> column 4

  * `TBODYACC-MEAN-Z`
  
> column 5  

  * `TBODYACC-STD-X`
  
> column 6  

  * `TBODYACC-STD-Y`
  
> column 7  

  * `TBODYACC-STD-Z`
  
> column 8
		
  * `TGRAVITYACC-MEAN-X`
  
> column 9  
  
  * `TGRAVITYACC-MEAN-Y`

> column 10

  * `TGRAVITYACC-MEAN-Z`

> column 11

  * `TGRAVITYACC-STD-X`

> column 12

  * `TGRAVITYACC-STD-Y`

> column 13

  * `TGRAVITYACC-STD-Z`

> column 14

  * `TBODYACCJERK-MEAN-X`

> column 15

  * `TBODYACCJERK-MEAN-Y`

> column 16

  * `TBODYACCJERK-MEAN-Z`

> column 17

  * `TBODYACCJERK-STD-X`

> column 18

  * `TBODYACCJERK-STD-Y`

> column 19

  * `TBODYACCJERK-STD-Z`

> column 20

  * `TBODYGYRO-MEAN-X`

> column 21

  * `TBODYGYRO-MEAN-Y`

> column 22

  * `TBODYGYRO-MEAN-Z`

> column 23

  * `TBODYGYRO-STD-X`

> column 24

  * `TBODYGYRO-STD-Y`

> column 25

  * `TBODYGYRO-STD-Z`

> column 26

  * `TBODYGYROJERK-MEAN-X`

> column 27

  * `TBODYGYROJERK-MEAN-Y`

> column 28

  * `TBODYGYROJERK-MEAN-Z`

> column 29

  * `TBODYGYROJERK-STD-X`

> column 30

  * `TBODYGYROJERK-STD-Y`

> column 31

  * `TBODYGYROJERK-STD-Z`

> column 32

  * `TBODYACCMAG-MEAN`

> column 33

  * `TBODYACCMAG-STD`

> column 34

  * `TGRAVITYACCMAG-MEAN`

> column 35

  * `TGRAVITYACCMAG-STD`

> column 36

  * `TBODYACCJERKMAG-MEAN`

> column 37

  * `TBODYACCJERKMAG-STD`

> column 38

  * `TBODYGYROMAG-MEAN`

> column 39

  * `TBODYGYROMAG-STD`

> column 40

  * `TBODYGYROJERKMAG-MEAN`

> column 41

  * `TBODYGYROJERKMAG-STD`

> column 42

  * `FBODYACC-MEAN-X`

> column 43

  * `FBODYACC-MEAN-Y`

> column 44

  * `FBODYACC-MEAN-Z`

> column 45

  * `FBODYACC-STD-X`

> column 46

  * `FBODYACC-STD-Y`

> column 47

  * `FBODYACC-STD-Z`

> column 48

  * `FBODYACCJERK-MEAN-X`

> column 49

  * `FBODYACCJERK-MEAN-Y`

> column 50

  * `FBODYACCJERK-MEAN-Z`

> column 51

  * `FBODYACCJERK-STD-X`

> column 52

  * `FBODYACCJERK-STD-Y`

> column 53

  * `FBODYACCJERK-STD-Z`

> column 54

  * `FBODYGYRO-MEAN-X`

> column 55

  * `FBODYGYRO-MEAN-Y`

> column 56

  * `FBODYGYRO-MEAN-Z`

> column 57

  * `FBODYGYRO-STD-X`

> column 58

  * `FBODYGYRO-STD-Y`

> column 59

  * `FBODYGYRO-STD-Z`

> column 60

  * `FBODYACCMAG-MEAN`

> column 61

  * `FBODYACCMAG-STD`

> column 62

  * `FBODYBODYACCJERKMAG-MEAN`

> column 63

  * `FBODYBODYACCJERKMAG-STD`

> column 64

  * `FBODYBODYGYROMAG-MEAN`

> column 65

  * `FBODYBODYGYROMAG-STD`

> column 66

  * `FBODYBODYGYROJERKMAG-MEAN`

> column 67

  * `FBODYBODYGYROJERKMAG-STD`
  
> column 68