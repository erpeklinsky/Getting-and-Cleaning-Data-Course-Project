##Download the zip file 
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "UCI_HAR_Dataset.zip", method = "curl")

##Unzip the file
unzip(zipfile= "UCI_HAR_Dataset.zip")

##File path to all files
path <- file.path("./Getting-and-Cleaning-Data-Course-Project" , "UCI HAR Dataset")

## The following documents that will be used for project: 
##subject_test.txt
##X_test.txt
##y_test.txt
##subject_train.txt
##X_train.txt
##y_train.txt
##features.txt
##activity_labels.txt


## Read activity files for test and train data
test_activity <- read.table(file.path(path, "test", "y_test.txt"), header = FALSE)
train_activity <-read.table(file.path(path, "train", "y_train.txt"), header = FALSE)
  
## Read Subject files for test and train data
test_subject <- read.table(file.path(path, "test", "subject_test.txt"), header = FALSE)
train_subject <-read.table(file.path(path, "train", "subject_train.txt"), header = FALSE)
  
## Read features files for test and train data
test_features <- read.table(file.path(path, "test", "X_test.txt"), header = FALSE)
train_features <-read.table(file.path(path, "train", "X_train.txt"), header = FALSE) 

## Read feature names file
feature_names <- read.table(file.path(path, "features.txt"),head=FALSE)

## Read activity labels file
activity_labels <- read.table(file.path(path, "activity_labels.txt"), head = FALSE)

##Combine Test and Train Data by rows and give a column name
all_activity <- rbind(test_activity, train_activity)
names(all_activity) <- "Activity"

all_subject <- rbind(test_subject, train_subject)
names(all_subject) <- "Subject"

all_features <- rbind(test_features, train_features)
names(all_features) <- feature_names$V2

##Merge columns to get a data frame
combined_data <- cbind(all_subject, all_activity, all_features) 

##Extract mean and std for features
extracted_features<-feature_names$V2[grep("mean|std", feature_names$V2)]
selected_features<-c("Subject", "Activity", as.character(extracted_features))
combined_data<-subset(combined_data,select=selected_features)

##Use activity names to appropriately name the activites
combined_data$Activity <- as.character(combined_data$Activity)
for (i in 1:6){
  combined_data$Activity[combined_data$Activity == i] <- as.character(activity_labels[i,2])
}

combined_data$Activity <- as.factor(combined_data$Activity)

##Appropriately label the data set with descriptive variable names
names(combined_data) <- gsub("^t", "time", names(combined_data))
names(combined_data) <- gsub("Acc", "Accelerometer", names(combined_data))
names(combined_data) <- gsub("BodyBody", "Body", names(combined_data))
names(combined_data) <- gsub("^f", "Frequency", names(combined_data))
names(combined_data) <- gsub("Gyro", "Gyroscope", names(combined_data))

##From the data set in step 4,  a second, independent tidy data set is created with 
##the average of each variable for each activity and each subject.
library(data.table)

combined_data$Subject <- as.factor(combined_data$Subject)
combined_data <- data.table(combined_data)

tidy_data <- aggregate(. ~Subject + Activity, combined_data, mean)
tidy_data <- tidy_data[order(tidy_data$Subject,tidy_data$Activity),]
write.table(tidy_data, file = "Tidy Data.txt", row.names = FALSE)