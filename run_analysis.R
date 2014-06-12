# Check if the direcotry is set correctly
if (!file.exists("train") & !file.exists("test")) {
  stop("Please, set up the working directory.")
} else {
  cat("Proceeding with calculations... ")
}

# Read and combine the files in question
SETS <- rbind(read.table("train/X_train.txt"), read.table("test/X_test.txt"))
LABELS <- rbind(read.table("train/y_train.txt"), read.table("test/y_test.txt"))
LABELS_names <- read.table("activity_labels.txt")
LABELS[,1] <- LABELS_names[LABELS[,1], 2] # Replace codes with actual labels
SUBJECTS <- rbind(read.table("train/subject_train.txt"), read.table("test/subject_test.txt"))

# Select only the measurements on the mean and standard deviation for each measurement
FEATURES <- read.table("features.txt")
FEATURES_selected <- grep("-mean\\(\\)|-std\\(\\)", FEATURES[, 2])

# Apply created indexes to SETS data; name corresponding variables
SETS_selected <- SETS[, FEATURES_selected]
names(SETS_selected) <- FEATURES[FEATURES_selected, 2]

# Remove unnecessary brackets from var names, tranform the names to uppercase
names(SETS_selected) <- toupper(gsub("\\(|\\)", "", names(SETS_selected)))

# Combine everything, add missing variables
db <- cbind(SUBJECTS,LABELS,SETS_selected)
names(db)[1] <- "Subjects"
names(db)[2] <- "Activities"

# Separate and count unique subjects from the set
unique_persons <- unique(db[,1])
number_of_persons <- length(unique_persons)
number_of_activities <- dim(LABELS_names)[1]
number_of_variables <- dim(db)[2]
number_of_observations <- number_of_persons*number_of_activities

# Create an empty data frame to be filled with data
tidy <- as.data.frame(matrix(nrow=number_of_observations, ncol=number_of_variables))

# Label its rows and columns
colnames(tidy) <- colnames(db)

# Fil the data with data
row <- 1
for (per in 1:number_of_persons) {
  for (act in 1:number_of_activities) {
    tidy[row, 1] <- unique_persons[per]
    tidy[row, 2] <- as.character(LABELS_names[act, 2])
    tidy[row, 3:number_of_variables] <- colMeans(subset(db, Subjects == per & Activities == LABELS_names[act, 2])[, 3:number_of_variables])
    row <- row + 1
  }
}

# Reorder the data
tidy <- tidy[order(tidy[[1]]),]

# Write the data to the file
write.table(tidy, "tidy.txt", row.names = FALSE, quote = FALSE)
cat("Done!")