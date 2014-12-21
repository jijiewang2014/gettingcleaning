### Introduction

This repository includes the files related to cleaning the data sets on Human Activity Recognition Using Smartphones. 

### Explanation of Files

This project contains the following files.

1. run_analysis.R: the R script that performs cleaning of data. The script runs at the directory right above the test and train directories.
2. subject_activity_mean.txt: contains the tidied dataset. The definition of each column is explained in the CodeBook.md, section "Variables in the Tidied Dataset".
3. CodeBook.md: explanation of original dataset, tidied dataset, and transforms performed on the data.
4. README.md: this current file.

### How the Repository Works

The first step in run_analysis.R is to read data from the "test" directory and the "train" directory, combine them into three data set. X_test and X_train are combined as X_all, y_test and y_train are combined as y_all, and subject_test and subject_train are combined as subject_all. 

The data in the features.txt were used to rename the dataset X_all.

Then the script searches the dataset X_all for names that include mean() or std(). These are the variables that we will calculate an average.

Transform variable names in X_all to make them more descriptive.

After transforming y_all by replacing numbers with meaningful activity names, the next step is to combine X_all, y_all, and subject_all. 

Next, the dataset is grouped by combination of subject and activity, and mean of all variables is calculated for each group. The result is assigned to a new independent tidy data set called final_data.

Finally, the tidy dataset is written into a file called subject_activity_mean.txt. To read the data file into R and verify the result, use the following command: read.table("subject_activity_mean.txt", header=TRUE)


