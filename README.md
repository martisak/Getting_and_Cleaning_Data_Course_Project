## Running the script

    source('run_analysis.R')

## What the script does

If the directory "UCI HAR Dataset" does not exist, the raw data will be downloaded and extracted.

The test and training sets will be merged after subject (number) and activities (text) are added as columns.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. [TODO] Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Codebook

see [codebook](codebook).
