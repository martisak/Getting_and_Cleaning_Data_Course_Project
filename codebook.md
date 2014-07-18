# Codebook

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ [\[1\]](#refs).

These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


## Extracted features

| Original column number              | Feature name        | Meaning                      |
|-------------------------------------|---------------------|------------------------------|
| NA                                  | subject             | The subject ID               |
| NA                                  | activity            | The activity, one of "laying", "sitting", "standing", "walking", "walking_downstairs", "walking_upstairs" |
| 1   | tBodyAcc_mean_X               | Mean per subject and activity |
| 2   | tBodyAcc_mean_Y               | Mean per subject and activity |
| 3   | tBodyAcc_mean_Z               | Mean per subject and activity |
| 4   | tBodyAcc_std_X                | Mean per subject and activity |
| 5   | tBodyAcc_std_Y                | Mean per subject and activity |
| 6   | tBodyAcc_std_Z                | Mean per subject and activity |
| 41  | tGravityAcc_mean_X            | Mean per subject and activity |
| 42  | tGravityAcc_mean_Y            | Mean per subject and activity |
| 43  | tGravityAcc_mean_Z            | Mean per subject and activity |
| 44  | tGravityAcc_std_X             | Mean per subject and activity |
| 45  | tGravityAcc_std_Y             | Mean per subject and activity |
| 46  | tGravityAcc_std_Z             | Mean per subject and activity |
| 81  | tBodyAccJerk_mean_X           | Mean per subject and activity |
| 82  | tBodyAccJerk_mean_Y           | Mean per subject and activity |
| 83  | tBodyAccJerk_mean_Z           | Mean per subject and activity |
| 84  | tBodyAccJerk_std_X            | Mean per subject and activity |
| 85  | tBodyAccJerk_std_Y            | Mean per subject and activity |
| 86  | tBodyAccJerk_std_Z            | Mean per subject and activity |
| 121 | tBodyGyro_mean_X              | Mean per subject and activity |
| 122 | tBodyGyro_mean_Y              | Mean per subject and activity |
| 123 | tBodyGyro_mean_Z              | Mean per subject and activity |
| 124 | tBodyGyro_std_X               | Mean per subject and activity |
| 125 | tBodyGyro_std_Y               | Mean per subject and activity |
| 126 | tBodyGyro_std_Z               | Mean per subject and activity |
| 161 | tBodyGyroJerk_mean_X          | Mean per subject and activity |
| 162 | tBodyGyroJerk_mean_Y          | Mean per subject and activity |
| 163 | tBodyGyroJerk_mean_Z          | Mean per subject and activity |
| 164 | tBodyGyroJerk_std_X           | Mean per subject and activity |
| 165 | tBodyGyroJerk_std_Y           | Mean per subject and activity |
| 166 | tBodyGyroJerk_std_Z           | Mean per subject and activity |
| 201 | tBodyAccMag_mean              | Mean per subject and activity |
| 202 | tBodyAccMag_std               | Mean per subject and activity |
| 214 | tGravityAccMag_mean           | Mean per subject and activity |
| 215 | tGravityAccMag_std            | Mean per subject and activity |
| 227 | tBodyAccJerkMag_mean          | Mean per subject and activity |
| 228 | tBodyAccJerkMag_std           | Mean per subject and activity |
| 240 | tBodyGyroMag_mean             | Mean per subject and activity |
| 241 | tBodyGyroMag_std              | Mean per subject and activity |
| 253 | tBodyGyroJerkMag_mean         | Mean per subject and activity |
| 254 | tBodyGyroJerkMag_std          | Mean per subject and activity |
| 266 | fBodyAcc_mean_X               | Mean per subject and activity |
| 267 | fBodyAcc_mean_Y               | Mean per subject and activity |
| 268 | fBodyAcc_mean_Z               | Mean per subject and activity |
| 269 | fBodyAcc_std_X                | Mean per subject and activity |
| 270 | fBodyAcc_std_Y                | Mean per subject and activity |
| 271 | fBodyAcc_std_Z                | Mean per subject and activity |
| 294 | fBodyAcc_meanFreq_X           | Mean per subject and activity |
| 295 | fBodyAcc_meanFreq_Y           | Mean per subject and activity |
| 296 | fBodyAcc_meanFreq_Z           | Mean per subject and activity |
| 345 | fBodyAccJerk_mean_X           | Mean per subject and activity |
| 346 | fBodyAccJerk_mean_Y           | Mean per subject and activity |
| 347 | fBodyAccJerk_mean_Z           | Mean per subject and activity |
| 348 | fBodyAccJerk_std_X            | Mean per subject and activity |
| 349 | fBodyAccJerk_std_Y            | Mean per subject and activity |
| 350 | fBodyAccJerk_std_Z            | Mean per subject and activity |
| 373 | fBodyAccJerk_meanFreq_X       | Mean per subject and activity |
| 374 | fBodyAccJerk_meanFreq_Y       | Mean per subject and activity |
| 375 | fBodyAccJerk_meanFreq_Z       | Mean per subject and activity |
| 424 | fBodyGyro_mean_X              | Mean per subject and activity |
| 425 | fBodyGyro_mean_Y              | Mean per subject and activity |
| 426 | fBodyGyro_mean_Z              | Mean per subject and activity |
| 427 | fBodyGyro_std_X               | Mean per subject and activity |
| 428 | fBodyGyro_std_Y               | Mean per subject and activity |
| 429 | fBodyGyro_std_Z               | Mean per subject and activity |
| 452 | fBodyGyro_meanFreq_X          | Mean per subject and activity |
| 453 | fBodyGyro_meanFreq_Y          | Mean per subject and activity |
| 454 | fBodyGyro_meanFreq_Z          | Mean per subject and activity |
| 503 | fBodyAccMag_mean              | Mean per subject and activity |
| 504 | fBodyAccMag_std               | Mean per subject and activity |
| 513 | fBodyAccMag_meanFreq          | Mean per subject and activity |
| 516 | fBodyBodyAccJerkMag_mean      | Mean per subject and activity |
| 517 | fBodyBodyAccJerkMag_std       | Mean per subject and activity |
| 526 | fBodyBodyAccJerkMag_meanFreq  | Mean per subject and activity |
| 529 | fBodyBodyGyroMag_mean         | Mean per subject and activity |
| 530 | fBodyBodyGyroMag_std          | Mean per subject and activity |
| 539 | fBodyBodyGyroMag_meanFreq     | Mean per subject and activity |
| 542 | fBodyBodyGyroJerkMag_mean     | Mean per subject and activity |
| 543 | fBodyBodyGyroJerkMag_std      | Mean per subject and activity |
| 552 | fBodyBodyGyroJerkMag_meanFreq | Mean per subject and activity |

## <a name="refs"></a>References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes_Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware_Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria_Gasteiz, Spain. Dec 2012
