#----------------------Merge data sets---------------------------------
#read X_test data set
df_test <- read.table("UCI HAR Dataset/test/X_test.txt", sep="",header=F)
#read X_train data set
df_train <- read.table("UCI HAR Dataset/train/X_train.txt", sep="",header=F)
#read subject_test data set
subjectID_test <- read.table("UCI HAR Dataset/test/subject_test.txt", sep="",header=F)
#read subject_train data set
subjectID_train <-read.table("UCI HAR Dataset/train/subject_train.txt", sep="",header=F)
#read y_test data set
activityID_test <- read.table("UCI HAR Dataset/test/y_test.txt", sep="",header=F)
#read y_train data set
activityID_train <- read.table("UCI HAR Dataset/train/y_train.txt", sep="",header=F)
#combine subjectID_test+activityID_test+df_test into one data frame
cdf_test <- data.frame(subjectID_test,activityID_test,df_test)
#combine subjectID_train+activityID_train+df_train into one data frame
cdf_train <-data.frame(subjectID_train,activityID_train,df_train)
#merge test and train data sets
mdf <- rbind(cdf_test,cdf_train)

#-------------------------Get MEAN and STD----------------------------------
#read features names from file
features <- read.table("UCI HAR Dataset/features.txt", sep="",header=F,stringsAsFactor=F)
features <- features[,2]
#get indices of features that contain mean
meanIndex <- grep("mean()",features,fixed=T)
#get indices of features that contain std
stdIndex <- grep("std()",features,fixed=T)
#combine them into one vector and sort
meanAndstdIndex <- c(meanIndex,stdIndex)
meanAndstdIndex <- sort(meanAndstdIndex)
#move it two symbols left to skip subjectID and activityID in merge data set
meanAndstdIndex <- meanAndstdIndex+2
#extract mean and std values from merge data set
meanAndstdDF <- mdf[,meanAndstdIndex]

#-------------------------Name activities in data set--------------------------
#read activity labels from file
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", sep="",header=F,stringsAsFactor=F)
#change activity by its label in merged data set
mdf[,2]<-activity_labels[,2][match(mdf[,2],activity_labels[,1])]

#------------------------Give descriptive names to variables-------------------
#create a vector with names
names <- c("subject_id","activity",features)
#assign names to variables in merged data frame
names(mdf) <-names

#---------------------Create tidy data set with average----------------------- 
#---------------of each variable per activity per subject---------------------
#load data.table package
library(data.table)
#create new data table: group by subject_id and activity, get mean for each variable
avgdf <- data.table(mdf)[,lapply(.SD,mean),by=list(subject_id,activity)]
#create a vector with new names
new_names <- c("subject_id","activity",sub("^","avg_",features))
#assign new names to the data set with an average value for each variable
setnames(avgdf,new_names)

#---------------------Write data set in txt file------------------------------
write.table(avgdf,file="avg_ds.txt",row.name=F)
