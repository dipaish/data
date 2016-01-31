#### A code book 
###### It describes the variables, the data, and any transformations or work  performed to clean up the data. 
-----------------------------------------------------------------------------------------------------------------------------
####Source of Data : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
####Description of Data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
-----------------------------------------------------------------------------------------------------------------------------
### The script run_analysis.R performs the following steps to clean the data: 

1. download.file() function is used to download the required data set.
2. unzip() function is used to extract the downloaded data set.
3. read.table() function is used to read the required data sets.
4. rbind() function is used to merge the datasets and labels
5. names() function is used to assign name to variables
6. cbind() function is used to combine the required data set.
7. library(plyr) is loaded and the data is aggregated
8. Finally write.table() function is used to produce the independent data set tidydata.txt


----------------------------------------------------------------------------------------------------------------------------
### Variables 
| S.N. |                                 Variables                                |                       Description                       |
|------|:------------------------------------------------------------------------:|:-------------------------------------------------------:|
| 1    | train, test, trainActivties, testActivities, trainSubjects, testSubjects | Contains data from the downloaded files.                |
| 2    | subject, activity, features                                              | Merger the previous datasets for further analysis       |
| 3    | featuresNames                                                            | featuresNames contains the correct name for the dataset |
| 4    | cData                                                                    | Data set from subject & activity                        |
| 5    | allData                                                                  | Data set from features & cData                          |
| 6    | newData                                                                  | Relevant mean to be stored in a .txt file               |


-----------------------------------------------------------------------------------------------------------------------------
### Activity labels
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING


-----------------------------------------------------------------------------------------------------------------------------
### Files Used 
1. X_train.txt
2. X_test.txt
3. Y_train.txt
4. Y_test.txt
5. subject_train.txt
6. subject_test.txt
7. features.txt
8. activity_labels.txt

-----------------------------------------------------------------------------------------------------------------------------
### Produced file - a tidy data set 
1. tidydata.txt

-----------------------------------------------------------------------------------------------------------------------------
### Required libraries
1. plyr

--------------------------------------------------------------------------------------------------------------------------------------
### Measurements 

"subject" "activity" "tBodyAcc-mean()-X" "tBodyAcc-mean()-Y" "tBodyAcc-mean()-Z" "tBodyAcc-std()-X" "tBodyAcc-std()-Y" "tBodyAcc-std()-Z" "tGravityAcc-mean()-X" "tGravityAcc-mean()-Y" "tGravityAcc-mean()-Z" "tGravityAcc-std()-X" "tGravityAcc-std()-Y" "tGravityAcc-std()-Z" "tBodyAccJerk-mean()-X" "tBodyAccJerk-mean()-Y" "tBodyAccJerk-mean()-Z" "tBodyAccJerk-std()-X" "tBodyAccJerk-std()-Y" "tBodyAccJerk-std()-Z" "tBodyGyro-mean()-X" "tBodyGyro-mean()-Y" "tBodyGyro-mean()-Z" "tBodyGyro-std()-X" "tBodyGyro-std()-Y" "tBodyGyro-std()-Z" "tBodyGyroJerk-mean()-X" "tBodyGyroJerk-mean()-Y" "tBodyGyroJerk-mean()-Z" "tBodyGyroJerk-std()-X" "tBodyGyroJerk-std()-Y" "tBodyGyroJerk-std()-Z" "tBodyAccMag-mean()" "tBodyAccMag-std()" "tGravityAccMag-mean()" "tGravityAccMag-std()" "tBodyAccJerkMag-mean()" "tBodyAccJerkMag-std()" "tBodyGyroMag-mean()" "tBodyGyroMag-std()" "tBodyGyroJerkMag-mean()" "tBodyGyroJerkMag-std()" "fBodyAcc-mean()-X" "fBodyAcc-mean()-Y" "fBodyAcc-mean()-Z" "fBodyAcc-std()-X" "fBodyAcc-std()-Y" "fBodyAcc-std()-Z" "fBodyAccJerk-mean()-X" "fBodyAccJerk-mean()-Y" "fBodyAccJerk-mean()-Z" "fBodyAccJerk-std()-X" "fBodyAccJerk-std()-Y" "fBodyAccJerk-std()-Z" "fBodyGyro-mean()-X" "fBodyGyro-mean()-Y" "fBodyGyro-mean()-Z" "fBodyGyro-std()-X" "fBodyGyro-std()-Y" "fBodyGyro-std()-Z" "fBodyAccMag-mean()" "fBodyAccMag-std()" "fBodyBodyAccJerkMag-mean()" "fBodyBodyAccJerkMag-std()" "fBodyBodyGyroMag-mean()" "fBodyBodyGyroMag-std()" "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()"
