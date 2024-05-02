# Part 1 - Concatenating Dataframes
# creating dataframe with all train and test data
# loading the data
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

# loading the features (variable names)
features <- read.table("UCI HAR Dataset/features.txt")
# features dataframe has 2 columns, first one is just indexes
feature <- features$V2

# concatenating features (X) and labels(Y)
feature_data <- rbind(X_train, X_test)
data_labels <- rbind(Y_train, Y_test)
# changing column names
names(feature_data) <- feature
names(data_labels) <- "Labels"
# complete data with all features and labels
data <- cbind(feature_data, data_labels)


# Part 2 - Filtering Mean and Std
# filtering data to only include mean, std, and labels
data <- data[, grep("mean\\(\\)|std\\(\\)|Label", names(data))]


# Part 3 - Naming Activities in Data
# mapping numbers to corresponding categories
lookup_table <- data.frame (
    category = c(1,2,3,4,5,6),
    labels = c('walking', 'walking upstairs', 'walking downstairs',
               'sitting', 'standing', 'laying')
)
# merging the two dataframes with new labels
data <- merge(data, lookup_table, by.x = "Labels", 
                   by.y = "category", all.x = TRUE)
# removing old numerical labels
merged_df$Labels <- NULL

# Part 4 - Adding Descriptive Column Names






