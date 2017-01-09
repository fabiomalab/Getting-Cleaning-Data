## Position in the wd where you have unzipped your files.
## With list.files() should see at least the test and train folders.
## first read the features.txt and activity_labels files
features <- read.delim("features.txt", sep=" ", header=FALSE)[2]
activity <- read.delim("activity_labels.txt", sep ="", header =FALSE)

## Testand training sets are read and merged
testSet <- read.delim("test/X_test.txt", sep = "", header = FALSE)
trainSet <- read.delim("train/X_train.txt", sep = "", header = FALSE)
mergedSet <- rbind(testSet,trainSet)

## Test and training movements are read and merged
testMoves <- read.delim("test/Y_test.txt", sep = "", header = FALSE)
trainMoves <- read.delim("train/Y_train.txt", sep = "", header = FALSE)
mergedMoves <- rbind(testMoves, trainMoves)

## Subjects participating to testing and training are read and merged
testSubject <- read.delim("test/subject_test.txt", sep = "", header = FALSE)
trainSubject <- read.delim("train/subject_train.txt", sep = "", header = FALSE)
mergedSubject <- rbind(testSubject, trainSubject)

## Only the variables referring to mean and Std are retained
names(mergedSet) <- features[,1]
withMeanOrStd <- grepl("std|mean", names(mergedSet), ignore.case = TRUE)
mergedSet <- mergedSet[ withMeanOrStd ] 

## Descriptive Subject and Activity are used as variable names
mergedMoves <- merge(mergedMoves, activity, by.x = "V1", by.y = "V1")[2]
mergedSet <- cbind(mergedSubject, mergedMoves, mergedSet)
names(mergedSet)[1:2] <- c("Subject", "Activity")

mergedSet$Subject <- as.factor(mergedSet$Subject)

