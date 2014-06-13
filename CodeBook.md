### CodeBook for the Human Activity Recognition Project

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

  * `Subjects`
		volunteers coded by numbers (1-30)
  * `Activities`
		performed activities (see above)
    * `TBODYACC-MEAN-X`
  * `TBODYACC-MEAN-Y`
  * `TBODYACC-MEAN-Z`
  * `TBODYACC-STD-X`
  * `TBODYACC-STD-Y`
  * `TBODYACC-STD-Z`
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