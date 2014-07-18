############################################################
# Martin Isaksson
# Coursera - Getting and Cleaning Data Course Project
# https://class.coursera.org/getdata-005
############################################################

############################################################
# Download data set if directory does not exist            #
############################################################

data_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if (!file.exists("UCI HAR Dataset")){
  download.file(data_url, "UCI HAR Dataset.zip", method="curl")
  unzip("UCI HAR Dataset.zip")
}

############################################################
# Read common stuff                                        #
############################################################

# Read activities
activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt')

# Lower case activities looks nicer
activity_labels$V2 <- tolower(activity_labels$V2)

# Read features and remove () in the names for readability
# replace - with _
names <- read.table('UCI HAR Dataset/features.txt')
names <- gsub('\\(\\)','', names[,2]) # Discard first column
names <- gsub('-','_', names)

############################################################
# Test set                                                 #
############################################################

# Read data from test set and add feature names as column names
test_set <- read.table('UCI HAR Dataset/test/X_test.txt')
colnames(test_set) <- names

# Read and add test subjects as column "subject"
test_set_subject <- read.table('UCI HAR Dataset/test/subject_test.txt')
test_set$subject <- as.numeric(test_set_subject[,1])

# Read and add test activies
test_set_activity <- read.table('UCI HAR Dataset/test/y_test.txt')
test_set$activity <- factor(activity_labels$V2[match(test_set_activity$V1, activity_labels$V1)])

# Label this as test set
test_set$set <- "test"

############################################################
# Train set                                                #
############################################################

# Read data from test set and add feature names as column names
train_set <- read.table('UCI HAR Dataset/train/X_train.txt')
colnames(train_set) <- names

# Read and add test subjects as column "subject" (cbind or this?)
train_set_subject <- read.table('UCI HAR Dataset/train/subject_train.txt')
train_set$subject <- as.numeric(train_set_subject[,1])

# Read and add test activies
train_set_activity <- read.table('UCI HAR Dataset/train/y_train.txt')
train_set$activity <- factor(activity_labels$V2[match(train_set_activity$V1, activity_labels$V1)])

# Label this as test set
train_set$set <- "train"

############################################################
# Merging                                                  #
############################################################

dataset <- rbind(test_set, train_set)

# Clear test and train set to free up some memory
rm(list = c("test_set", "test_set_activity", "test_set_subject"))
rm(list = c("train_set", "train_set_activity", "train_set_subject"))

############################################################
# Extracting mean and standard deviation                   #
############################################################

# Anything with "mean" or "std" but not "Mean" so angle features are not included.
dataset_mean_and_std <- dataset[,grep("mean|std", colnames(dataset))]
dataset_mean_and_std$activity <- dataset$activity
dataset_mean_and_std$subject <- dataset$subject

############################################################
# Summarize                                                #
############################################################

tidy_dataset <-aggregate(dataset_mean_and_std[,1:79], dataset_mean_and_std[,c("subject","activity")], mean)
write.table(tidy_dataset,"tidy_dataset.csv", row.names = FALSE)
