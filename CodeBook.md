# Code Book for tidy_data.txt

## Variables

* `subject`: The ID of the test subject (1-30).
* `activity`: The activity performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
* `timeBodyAccelerometer-mean-X`: Average of timeBodyAccelerometer-mean-X.
* `timeBodyAccelerometer-mean-Y`: Average of timeBodyAccelerometer-mean-Y.
* `timeBodyAccelerometer-mean-Z`: Average of timeBodyAccelerometer-mean-Z.
* `timeBodyAccelerometer-std-X`: Average of timeBodyAccelerometer-std-X.
* `timeBodyAccelerometer-std-Y`: Average of timeBodyAccelerometer-std-Y.
* `timeBodyAccelerometer-std-Z`: Average of timeBodyAccelerometer-std-Z.
* ... (add descriptions for all other variables) ...
* `frequencyBodyBodyGyroscopeJerkMagnitude-mean()`: Average of frequencyBodyBodyGyroscopeJerkMagnitude-mean().
* `frequencyBodyBodyGyroscopeJerkMagnitude-std()`: Average of frequencyBodyBodyGyroscopeJerkMagnitude-std().

## Notes

* All measurements are averages of the original measurements from the UCI HAR Dataset.
* The original measurements were normalized and bounded within [-1, 1].
* The "time" and "frequency" prefixes indicate whether the measurements are in the time or frequency domain.
* "Accelerometer" and "Gyroscope" refer to the type of sensor used.
* "Magnitude" refers to the magnitude of the 3-dimensional signals.
* "mean()" and "std()" refer to the mean and standard deviation of the signals.
