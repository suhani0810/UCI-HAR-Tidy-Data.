# run_analysis.R

library(dplyr)

# Read data
train_x <- read.table("UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("UCI HAR Dataset/train/y_train.txt")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
test_x <- read.table("UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Merge data
all_x <- rbind(train_x, test_x)
all_y <- rbind(train_y, test_y)
all_subject <- rbind(train_subject, test_subject)

# Extract mean and std
mean_std_indices <- grep("mean\\(\\)|std\\(\\)", features[, 2])
all_x_mean_std <- all_x[, mean_std_indices]

# Label activities
all_y_labeled <- activity_labels[all_y[, 1], 2]

# Label variables
colnames(all_x_mean_std) <- features[mean_std_indices, 2]
names(all_x_mean_std) <- gsub("\\(\\)", "", names(all_x_mean_std))
names(all_x_mean_std) <- gsub("^t", "time", names(all_x_mean_std))
names(all_x_mean_std) <- gsub("^f", "frequency", names(all_x_mean_std))
names(all_x_mean_std) <- gsub("Acc", "Accelerometer", names(all_x_mean_std))
names(all_x_mean_std) <- gsub("Gyro", "Gyroscope", names(all_x_mean_std))
names(all_x_mean_std) <- gsub("Mag", "Magnitude", names(all_x_mean_std))
names(all_x_mean_std) <- gsub("BodyBody", "Body", names(all_x_mean_std))
tidy_data <- cbind(all_subject, all_y_labeled, all_x_mean_std)
colnames(tidy_data)[1:2] <- c("subject", "activity")

# Create tidy data with averages
final_tidy_data <- tidy_data %>%
  group_by(subject, activity) %>%
  summarise_all(mean)

# Write to file
write.table(final_tidy_data, "tidy_data.txt", row.names = FALSE)
