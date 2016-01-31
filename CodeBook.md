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

1. "tBodyAcc-mean()-X" 
2. "tBodyAcc-mean()-Y" 
3. "tBodyAcc-mean()-Z"
4. "tBodyAcc-std()-X" 
5. "tBodyAcc-std()-Y" 
6. "tBodyAcc-std()-Z" 
7. "tGravityAcc-mean()-X" 
8. "tGravityAcc-mean()-Y" 
9. "tGravityAcc-mean()-Z" 
10. "tGravityAcc-std()-X"
11. "tGravityAcc-std()-Y" 
12. "tGravityAcc-std()-Z" 
13. "tBodyAccJerk-mean()-X" 
14. "tBodyAccJerk-mean()-Y" 
15. "tBodyAccJerk-mean()-Z" 
16. "tBodyAccJerk-std()-X" 
17. "tBodyAccJerk-std()-Y" 
18. "tBodyAccJerk-std()-Z" 
19. "tBodyGyro-mean()-X" 
20. "tBodyGyro-mean()-Y" 
21. "tBodyGyro-mean()-Z" 
22. "tBodyGyro-std()-X"
23. "tBodyGyro-std()-Y" 
24. "tBodyGyro-std()-Z" 
25. "tBodyGyroJerk-mean()-X"
26. "tBodyGyroJerk-mean()-Y"
27. "tBodyGyroJerk-mean()-Z" 
28. "tBodyGyroJerk-std()-X" 
29. "tBodyGyroJerk-std()-Y" 
30. "tBodyGyroJerk-std()-Z" 
31. "tBodyAccMag-mean()"
32. "tBodyAccMag-std()"
33. "tGravityAccMag-mean()" 
34. "tGravityAccMag-std()" 
35. "tBodyAccJerkMag-mean()" 
36. "tBodyAccJerkMag-std()"
37. "tBodyGyroMag-mean()"
38. "tBodyGyroMag-std()"
39. "tBodyGyroJerkMag-mean()"
40. "tBodyGyroJerkMag-std()" 
41. "fBodyAcc-mean()-X" 
42. "fBodyAcc-mean()-Y" 
43. "fBodyAcc-mean()-Z" 
44. "fBodyAcc-std()-X" 
45. "fBodyAcc-std()-Y" 
46. "fBodyAcc-std()-Z" 
47. "fBodyAccJerk-mean()-X" 
48. "fBodyAccJerk-mean()-Y" 
49. "fBodyAccJerk-mean()-Z" 
50. "fBodyAccJerk-std()-X"
51. "fBodyAccJerk-std()-Y" 
52. "fBodyAccJerk-std()-Z"
53. "fBodyGyro-mean()-X"
54. "fBodyGyro-mean()-Y"
55. "fBodyGyro-mean()-Z" 
56. "fBodyGyro-std()-X"
57. "fBodyGyro-std()-Y"
58. "fBodyGyro-std()-Z"
59. "fBodyAccMag-mean()"
60. "fBodyAccMag-std()"
61. "fBodyBodyAccJerkMag-mean()" 
62. "fBodyBodyAccJerkMag-std()" 
63. "fBodyBodyGyroMag-mean()"
64. "fBodyBodyGyroMag-std()" 
65. "fBodyBodyGyroJerkMag-mean()" 
66. "fBodyBodyGyroJerkMag-std()"
