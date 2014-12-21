### Introduction

This repository contains tidied dataset based on Human Activity Recognition Using Smartphones Dataset. The original raw dataset and a full description can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Explanation of Original Dataset

The original experiments made measurements of 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50 Hz. The measurements were pre-processed by dividing into windows of 2.56 sec with 50% overlap (128 readings/window), applying low-pass filtering, and some being further processed by a Fast Fourier Transform (FFT). The original data set contains results of transforms such as mean(), std(), min(), max(), etc., on each window of measurements. 

### Transforms Performed on Original Dataset

We retained variables of mean() and std() from the original dataset only, and then grouped these by subject and activity, then calculated average of the variables of each group.

### Explanation of Tidied Dataset

Each row is the average of all windowed mean and standard deviation of all measurements for one subject and one activity.

### Variables in the Tidied Dataset

1. SubjectID: An identifier of the subject (person) who carried out the experiment.
2. activity: one of six activities (Walking, Walking_Upstairs, Walking_Downstairs, Sitting, Standing, Laying).
3. tBodyAcc.mean.X: mean of body acceleration from accelerometer X axis.
4. tBodyAcc.mean.Y: mean of body acceleration from accelerometer Y axis.
5. tBodyAcc.mean.Z: mean of body acceleration from accelerometer Z axis.
6. tBodyAcc.std.X: std of body acceleration from accelerometer X axis.
7. tBodyAcc.std.Y: std of body acceleration from accelerometer Y axis.
8. tBodyAcc.std.Z: std of body acceleration from accelerometer Z axis.
9. tGravityAcc.mean.X: mean of gravitational acceleration from accelerometer X axis.
10. tGravityAcc.mean.Y: mean of gravitational acceleration from accelerometer Y axis.
11. tGravityAcc.mean.Z: mean of gravitational acceleration from accelerometer Z axis.
12. tGravityAcc.std.X: std of gravitational acceleration from accelerometer X axis.
13. tGravityAcc.std.Y: std of gravitational acceleration from accelerometer Y axis.
14. tGravityAcc.std.Z: std of gravitational acceleration from accelerometer Z axis.
15. tBodyAccJerk.mean.X: mean of body acceleration Jerk signal from accelerometer X axis.
16. tBodyAccJerk.mean.Y: mean of body acceleration Jerk signal from accelerometer Y axis.
17. tBodyAccJerk.mean.Z: mean of body acceleration Jerk signal from accelerometer Z axis.
18. tBodyAccJerk.std.X: std of body acceleration Jerk signal from accelerometer X axis.
19. tBodyAccJerk.std.Y: std of body acceleration Jerk signal from accelerometer Y axis.
20. tBodyAccJerk.std.Z: std of body acceleration Jerk signal from accelerometer Z axis.
21. tBodyGyro.mean.X: mean of body angular velocity from the gyroscope X axis.
22. tBodyGyro.mean.Y: mean of body angular velocity from the gyroscope Y axis.
23. tBodyGyro.mean.Z: mean of body angular velocity from the gyroscope Z axis.
24. tBodyGyro.std.X: std of body angular velocity from the gyroscope X axis.
25. tBodyGyro.std.Y: std of body angular velocity from the gyroscope Y axis.
26. tBodyGyro.std.Z: std of body angular velocity from the gyroscope Z axis.
27. tBodyGyroJerk.mean.X: mean of body angular velocity Jerk signal from the gyroscope X axis.
28. tBodyGyroJerk.mean.Y: mean of body angular velocity Jerk signal from the gyroscope Y axis.
29. tBodyGyroJerk.mean.Z: mean of body angular velocity Jerk signal from the gyroscope Z axis.
30. tBodyGyroJerk.std.X: std of body angular velocity Jerk signal from the gyroscope X axis.
31. tBodyGyroJerk.std.Y: std of body angular velocity Jerk signal from the gyroscope Y axis.
32. tBodyGyroJerk.std.Z: std of body angular velocity Jerk signal from the gyroscope Z axis.
33. tBodyAccMag.mean: mean of magnitude of body acceleration from accelerometer.
34. tBodyAccMag.std: std of magnitude of body acceleration from accelerometer.
35. tGravityAccMag.mean: mean of magnitude of gravitational acceleration from accelerometer.
36. tGravityAccMag.std: std of magnitude of gravitational acceleration from accelerometer.
37. tBodyAccJerkMag.mean: mean of magnitude of body acceleration Jerk signal from accelerometer.
38. tBodyAccJerkMag.std: std of magnitude of body acceleration Jerk signal from accelerometer.
39. tBodyGyroMag.mean: mean of magnitude of body angular velocity from the gyroscope.
40. tBodyGyroMag.std: std of magnitude of body angular velocity from the gyroscope.
41. tBodyGyroJerkMag.mean: mean of magnitude of body angular velocity Jerk signal from the gyroscope.
42. tBodyGyroJerkMag.std: std of magnitude of body angular velocity Jerk signal from the gyroscope.
43. fBodyAcc.mean.X: mean of FFT of body acceleration from accelerometer X axis.
44. fBodyAcc.mean.Y: mean of FFT of body acceleration from accelerometer Y axis.
45. fBodyAcc.mean.Z: mean of FFT of body acceleration from accelerometer Z axis.
46. fBodyAcc.std.X: std of FFT of body acceleration from accelerometer X axis.
47. fBodyAcc.std.Y: std of FFT of body acceleration from accelerometer Y axis.
48. fBodyAcc.std.Z: std of FFT of body acceleration from accelerometer Z axis.
49. fBodyAccJerk.mean.X: mean of FFT of body acceleration Jerk signal from accelerometer X axis.
50. fBodyAccJerk.mean.Y: mean of FFT of body acceleration Jerk signal from accelerometer Y axis.
51. fBodyAccJerk.mean.Z: mean of FFT of body acceleration Jerk signal from accelerometer Z axis.
52. fBodyAccJerk.std.X: std of FFT of body acceleration Jerk signal from accelerometer X axis.
53. fBodyAccJerk.std.Y: std of FFT of body acceleration Jerk signal from accelerometer Y axis.
54. fBodyAccJerk.std.Z: std of FFT of body acceleration Jerk signal from accelerometer Z axis.
55. fBodyGyro.mean.X: mean of FFT of body angular velocity from the gyroscope X axis.
56. fBodyGyro.mean.Y: mean of FFT of body angular velocity from the gyroscope Y axis.
57. fBodyGyro.mean.Z: mean of FFT of body angular velocity from the gyroscope Z axis.
58. fBodyGyro.std.X: std of FFT of body angular velocity from the gyroscope X axis.
59. fBodyGyro.std.Y: std of FFT of body angular velocity from the gyroscope Y axis.
60. fBodyGyro.std.Z: std of FFT of body angular velocity from the gyroscope Z axis.
61. fBodyAccMag.mean: mean of FFT of body acceleration magnitude from accelerometer.
62. fBodyAccMag.std: std of FFT of body acceleration magnitude from accelerometer.
63. fBodyBodyAccJerkMag.mean: mean of FFT of magnitude of body acceleration Jerk signal from accelerometer.
64. fBodyBodyAccJerkMag.std: std of FFT of magnitude of body acceleration Jerk signal from accelerometer.
65. fBodyBodyGyroMag.mean: mean of FFT of magnitude of body angular velocity from the gyroscope.
66. fBodyBodyGyroMag.std: std of FFT of magnitude of body angular velocity from the gyroscope.
67. fBodyBodyGyroJerkMag.mean: mean of FFT of magnitude of body angular velocity Jerk signal from the gyroscope.
68. fBodyBodyGyroJerkMag.std: std of FFT of magnitude of body angular velocity Jerk signal from the gyroscope.

