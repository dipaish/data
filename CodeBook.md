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
8. Finally write.table() function is used to produce the independent data set "tidydata.txt"
----------------------------------------------------------------------------------------------------------------------------
### Variables 
Name | Less | Pretty




