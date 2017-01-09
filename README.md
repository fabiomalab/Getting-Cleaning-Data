# Getting-Cleaning-Data
Final Assignment of the Course on Getting and Cleaning Data

The Original data have been collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data used for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following 3 steps have been applied to the input data:

* First training and test data have been merged into a single data.frame called mergedSet.
* Then all the variables not containing the mean or Std keywords have been dropped
* Third and last step, the variables names "Person" and "Movement" have been added by replacing the previous names carrying no meaning

Enclosed herewith you can find:
* the commented Script that will generate the data frame stored as "mergedSet"
* the updated data book describing the variables in the data frame
