## Background

This is the course project in [Getting and Cleaning Data](https://class.coursera.org/getdata-005) from [Coursera](http://coursera.org). The data comes from [
Human Activity Recognition Using Smartphones Data Set ](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
 [\[1\]](#refs).

## Study design

From "Human Activity Recognition on Smartphones using a Multiclass Hardware_Friendly Support Vector Machine" [\[1\]](#refs))

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities ("laying", "sitting", "standing", "walking", "walking_downstairs", "walking_upstairs") wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity was captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

See 'README.txt and ''features_info.txt' in the downloaded dataset for more details. Also see [the codebook](codebook.md) for more details on the extracted data.

## File list

| Filename       | Description  |
|----------------|--------------|
| [run_analysis.R](run_analysis.R) | The script   |
| README.md      | This file    |
| codebook.md    | [The codebook](codebook.md) |
| tidy_dataset.txt | The generated tidy data set |
| features_mean_std.txt	| Feature names in tidy data set (see [codebook](codebook.md)) |

## Running the script

    source('run_analysis.R')

## What the script does

If the directory "UCI HAR Dataset" does not exist, the raw data will be downloaded from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and extracted.
A full description is available at the site where the data was obtained:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

1. Merges the training and the test sets to create one data set.

   First the subject and activities are added as column to each set. Activities are replaced with the more descriptive text and is one of "laying", "sitting", "standing", "walking", "walking_downstairs", "walking_upstairs".

   Feature names are cleaned up, "()" is removed, "-" is replace with "_". CamelCase names are kept on purpose for readability.

   A label is added to each set to denote if it's the train or test set.

   The test and training sets are then merged (pasted together with rbind).

2. Extracts only the measurements on the mean and standard deviation for each measurement.

   Only the features containing "mean" or "std" are used. Columns containing "Mean" (capital M) are not used.

3. Uses descriptive activity names to name the activities in the data set

   Column "activity" contains the description of the activity, a lower case version of the activity names found in "activity_labels.txt". See [the codebook](codebook.md).

4. Appropriately labels the data set with descriptive variable names.

   See [the codebook](codebook.md). The variable names have been kept, but modified according to Step 1 to make them more readable (and usable in R). "t" and "f" in the beginning of each variable has been kept to make it easier to read time variables or frequency variables. CamelCase has also been kept for readability, even though I understand some people like lower case variable names.

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

  File is saved as "tidy_dataset.txt", which is a tab-delimited table with column names but without rownames.

  Note that the set names are omitted in this aggregation.

## Codebook

see [codebook](codebook.md).


## Versions

This script has been tested on Mac OS X 10.9.3 ( x86_64-apple-darwin10.8.0 (64-bit) ), [R version 3.0.2](http://www.r-project.org/).

## <a name="refs"></a>References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes_Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware_Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria_Gasteiz, Spain. Dec 2012
