features <- read.table("./features.txt")[,2]
feat_factor <-  grepl("mean()|std()", features)

X_test <- read.table("./test/X_test.txt", col.names = features)[,feat_factor]
Y_test <- read.table("./test/Y_test.txt",col.names = "activity_id")
subj_test <- read.table("./test/subject_test.txt", col.names = "subject_id")
data_test <- cbind(subj_test,Y_test,X_test)

X_train <- read.table("./train/X_train.txt", col.names = features)[,feat_factor]
Y_train <- read.table("./train/Y_train.txt",col.names = "activity_id")
subj_train <- read.table("./train/subject_train.txt", col.names = "subject_id")
data_train <- cbind(subj_train,Y_train,X_train)

data <- rbind(data_test,data_train)
                
agg = aggregate(data, by=list(activity = data$activity_id, subject=data$subject_id), mean)
activity <- read.table("./activity_labels.txt",col.names = c("activity_id","activity_nm"))
tidy = merge(activity,agg,by.x = "activity_id", by.y ="activity_id" )
tidy <- subset(tidy, select = -c(3,4) )
write.table(tidy,file="tidy.txt",sep=",",row.names = FALSE)