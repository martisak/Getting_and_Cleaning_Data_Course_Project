## Study design

## File list

| Filename       | Description  |
|----------------|--------------|
| [run_analysis.R](run_analysis.R) | The script   |
| README.md      | This file    |
| codebook.md    | [The codebook](codebook) |

## Running the script

    source('run_analysis.R')

## What the script does

If the directory "UCI HAR Dataset" does not exist, the raw data will be downloaded from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and extracted.
A full description is available at the site where the data was obtained:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

1. Merges the training and the test sets to create one data set.
   First the subject and activities are added as column to each set. Activities are replaced with the more descriptive text and is one of "laying", "sitting", "standing", "walking", "walking_downstairs", "walking_upstairs".

2. Extracts only the measurements on the mean and standard deviation for each measurement.
   Only the features containing "mean" or "std" are used. Columns containing "Mean" (capital M) are not used.

3. Uses descriptive activity names to name the activities in the data set
   Column "activity" contains the description of the activity.

4. Appropriately labels the data set with descriptive variable names.
   See [the codebook](codebook).

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Codebook

see [codebook](codebook).

## References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes_Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware_Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria_Gasteiz, Spain. Dec 2012
