### CodeBook for the Human Activity Recognition Project

This script analyses the results of the experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years: each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. 

At first, the obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Then the run_analysis.R may be applied:
  * the script checks if the working directory is set correctly and if the data files are in the same directory as the script itself
  * then the data files are joined back