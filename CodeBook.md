Code Book
This document describes the tidy data set created by the run_analysis.R script
that is located in this repository ("Getting-Data-Course-Project").

The run_analysis.R script creates a tidy data set from data collected from an
experiment on Human Activity Recognition Using Smartphones.

Raw data set and background information available here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

All of the values in the tidy data set created by the run_analysis.R script are
the mean of the corresponding variables from the original data set, grouped by
Subject_ID and Activity type. For extensive documentation on the variables in
columns 3-81, see the "features_info.txt" file included with the raw data set.

Variable listing by column number
1  Subject_ID - The subject ID of the test subject.
2  Activity - The activity that the subject was doing when measurements were taken.
3  tBodyAcc-mean()-X
4  tBodyAcc-mean()-Y
5  tBodyAcc-mean()-Z
6  tGravityAcc-mean()-X
7  tGravityAcc-mean()-Y
8  tGravityAcc-mean()-Z
9  tBodyAccJerk-mean()-X
10 tBodyAccJerk-mean()-Y
11 tBodyAccJerk-mean()-Z
12 tBodyGyro-mean()-X
13 tBodyGyro-mean()-Y
14 tBodyGyro-mean()-Z
15 tBodyAccMag-mean()
16 tGravityAccMag-mean()
17 tBodyAccJerkMag-mean()
18 tBodyGyroMag-mean()
19 tBodyGyroJerkMag-mean()
20 fBodyAcc-mean()-X
21 fBodyAcc-mean()-Y
22 fBodyAcc-mean()-Z
23 fBodyAcc-meanFreq()-X
24 fBodyAcc-meanFreq()-Y
25 fBodyAcc-meanFreq()-Z
26 fBodyAccJerk-mean()-X
27 fBodyAccJerk-mean()-Y
28 fBodyAccJerk-mean()-Z
29 fBodyAccJerk-meanFreq()-X
30 fBodyAccJerk-meanFreq()-Y
31 fBodyAccJerk-meanFreq()-Z
32 fBodyGyro-mean()-X
33 fBodyGyro-mean()-Y
34 fBodyGyro-mean()-Z
35 fBodyGyro-meanFreq()-X
36 fBodyGyro-meanFreq()-Y
37 fBodyGyro-meanFreq()-Z
38 fBodyAccMag-mean()
39 fBodyAccMag-meanFreq()
40 fBodyBodyAccJerkMag-mean()
41 fBodyBodyAccJerkMag-meanFreq()
42 fBodyBodyGyroMag-mean()
43 fBodyBodyGyroMag-meanFreq()
44 fBodyBodyGyroJerkMag-mean()
45 fBodyBodyGyroJerkMag-meanFreq()
46 angle(tBodyAccMean,gravity)
47 angle(tBodyAccJerkMean),gravityMean)
48 angle(tBodyGyroMean,gravityMean)
49 angle(tBodyGyroJerkMean,gravityMean)
50 angle(X,gravityMean)
51 angle(Y,gravityMean)
52 angle(Z,gravityMean)
53 tBodyAcc-std()-X
54 tBodyAcc-std()-Y
55 tBodyAcc-std()-Z
56 tGravityAcc-std()-X
57 tGravityAcc-std()-Y
58 tGravityAcc-std()-Z
59 tBodyAccJerk-std()-X
60 tBodyAccJerk-std()-Y
61 tBodyAccJerk-std()-Z
62 tBodyGyro-std()-X
63 tBodyGyro-std()-Y
64 tBodyGyro-std()-Z
65 tBodyAccMag-std()
66 tGravityAccMag-std()
67 tBodyAccJerkMag-std()
68 tBodyGyroMag-std()
69 tBodyGyroJerkMag-std()
70 fBodyAcc-std()-X
71 fBodyAcc-std()-Y
72 fBodyAcc-std()-Z
73 fBodyAccJerk-std()-X
74 fBodyAccJerk-std()-Y
75 fBodyAccJerk-std()-Z
76 fBodyGyro-std()-X
77 fBodyGyro-std()-Y
78 fBodyGyro-std()-Z
79 fBodyAccMag-std()
80 fBodyBodyAccJerkMag-std()
81 fBodyBodyGyroMag-std()
