## run_analysis.R

## This script collects, merges, and cleans data collected from the
## accelerometers from the Samsung Galaxy S smartphone. It has been
## written for the course project assignment for the "Getting and
## "Cleaning Data" course on Coursera in September 2014.

## Include dplyr package for data manipulation
library(dplyr)


## Load and combine the data sets (Part 1)

## Create labels vector; the labels are based on the features listed in the
## "features.txt" file
labels <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
labelsVector <- as.vector(labels$V2)

## Test sets - load and combine
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
Test_set <- cbind(subject_test, Y_test) %.% cbind(X_test)
names(Test_set) <- c("Subject_ID", "Activity", labelsVector)

## Train sets - load and combine
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
Train_set <- cbind(subject_train, Y_train) %.% cbind(X_train)
names(Train_set) <- c("Subject_ID", "Activity", labelsVector)

## Combine the Test and Train sets into a single data set
Data <- rbind(Test_set, Train_set)


## Extract measurements on the mean and standard deviation for
## each measurement (Part 2)
meanVariables <- select(Data, contains("mean()"))
stdVariables <- select(Data, contains("std()"))
IDandActivity <- select(Data, Subject_ID, Activity)
Data <- cbind(IDandActivity, meanVariables) %.% cbind(stdVariables)


## Add descriptive activity names to name the activities in the
## data set (Part 3)
Data$Activity <- as.character(Data$Activity)
Data$Activity <- sub("1", "Walking", Data$Activity)
Data$Activity <- sub("2", "Walking upstairs", Data$Activity)
Data$Activity <- sub("3", "Walking downstairs", Data$Activity)
Data$Activity <- sub("4", "Sitting", Data$Activity)
Data$Activity <- sub("5", "Standing", Data$Activity)
Data$Activity <- sub("6", "Lying", Data$Activity)


## Create a second tidy set with the average of each variable for
## each activity and each subject (Part 5)
tidyDataSet <- aggregate(Data[3:88], 
                          by = list(Data$Subject_ID,
                                    Data$Activity), 
                          mean)

colnames(tidyDataSet)[1:2] <- c("Subject_ID", "Activity")


## Write the tidy data set created in Part 5 to the working directory
write.table(tidyDataSet, file = "Variable-Avg-by-Activity-and-Subject.txt", 
            row.name = FALSE)