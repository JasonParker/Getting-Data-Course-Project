Getting-Data-Course-Project
===========================

Course project for "Getting and Cleaning Data" on Coursera, September 2014.


The run_analysis.R script accomplishes the goals set forward in the course project description.
Specifically, the script:

1. Loads and combines the data sets
2. Extracts measurements on the mean and standard deviation for each measurement.
3. Adds descriptive activity names to the data set.
4. Appropriately labels the data set with descriptive variable names.
5. Creates a new tidy data set with the average of each variable for each activity and subject.

Comments throughout the script indicate which goal is accomplished by each snippet of code. The
exception is Part 4, which is accomplished at several stages throughout the script.

The script begins by loading the "dplyr" package.

The script looks for the appropriate .txt files to be located in a subdirectory of the working
directory named "./UCI HAR Dataset". The structure of this subdirectory should match the data files
as downloaded from the original source.

Next, the script creates a table based on the "features.txt" file to collect the variable names.
It then creates a vector (names "labelsVector") containing the variable names.

The next two snippets of code load and combine the test and train data sets. Each snippet loads
the subject, X, and Y files and then combines all three into a data.frame. Lastly, each snippet 
renames the variables in the newly combined data.frame. The last line of code from this section
combines the test and train data sets into a single data set, called "Data".

Part 2 of the script extracts measurements on the mean and standard deviation for each measurement.

1. A select() function is used to select all variables containing the phrase "mean()", which are stored
to "meanVariables".
2. A select() function is used to select all variables containing the phrase "std()", which are stored
to "stdVariables".
3. A select() function is used to select the Subject_ID and Activity columns, which are stored to
"IDandActivity".
4. Data is rewritten using chained cbind() functions so that our data set only includes the required
variables.

Part 3 of the script uses a series of sub() commands to substitute the activity names for the coded
numbers in the original data set.

Part 5 of the script creates the new tidy data set using an aggregate() command. This section also
corrects the variable names of the newly created "tidyDataSet" data.frame.

Lastly, the script uses write.table() to write the new tidy data set to the working directory. The
output is named "Variable-Avg-by-Activity-and-Subject.txt".
