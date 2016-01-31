##Downloading the file 
url1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists("dataset.zip")){
  download.file(url1, destfile = "dataset.zip", method = "curl")
}
##unzipping the file dataset.zip as the unzipped files are located in the folder UCI HAR Dataset
if (!file.exists("UCI HAR Dataset")) { 
  unzip(zipfile = "dataset.zip") 
}

## 
## to get the list of files 
files <- list.files("UCI HAR Dataset", recursive = TRUE)

#loading the datasets 
#feature files
train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
#Activity files 
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt", header = FALSE)
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt", header = FALSE)
#subject files 
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)

#merging datasets and labels
subject <- rbind(trainSubjects, testSubjects)
activity <- rbind(trainActivities, testActivities)
features <- rbind(train, test)

#assigning names to variables 
names(subject) <- c("subject")
names(activity) <- c("activity")
featuresNames <- read.table("UCI HAR Dataset/features.txt", header = FALSE)
names(features)<- featuresNames$V2

#one data set
cData <- cbind(subject, activity)
allData <- cbind(features, cData)

#extracting only the measurement on the mean and standard deviation for each measurement

sdatafnames <- featuresNames$V2[grep("mean\\(\\)|std\\(\\)", featuresNames$V2)]
selected <- c(as.character(sdatafnames), "subject", "activity")
allData <- subset(allData, select=selected)
#using descriptive names 
labels_activity <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
# creating independent tidy data set with the average of each variable for each activity and each subject
#load the plyr library
library(plyr)
newData<-aggregate(. ~subject + activity, allData, mean)
newData<-newData[order(newData$subject,newData$activity),]
write.table(newData, file = "tidydata.txt",row.name=FALSE)
