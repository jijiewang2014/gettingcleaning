library("dplyr")

##read testing data
X_test<-read.table("test/X_test.txt", header=FALSE)
y_test<-read.table("test/y_test.txt", header=FALSE)
subject_test<-read.table("test/subject_test.txt", header=FALSE)

##read training data

X_train<-read.table("train/X_train.txt",  header=FALSE)
y_train<-read.table("train/y_train.txt",  header=FALSE)
subject_train<-read.table("train/subject_train.txt", header=FALSE)

##mergy testing and training data
X_all<-rbind(X_test, X_train)
y_all<-rbind(y_test, y_train)
subject_all<-rbind(subject_test,subject_train)

## Remove train data sets and test data sets from memory
rm(list=c("subject_train", "X_train", "y_train", "subject_test", "X_test", "y_test"))

## Read in features description from raw data set.
features<- read.table("features.txt", header=FALSE, colClasses="character")
names(features) <- c("FeatureID", "FeatureName")

##name the dataset using informationin feature.txt
names(X_all)<-features$FeatureName


##select only the columns related to mean or std
temp<-X_all[, grepl(pattern="-mean()|-std()", names(X_all))]
mean_std_data<-temp[,grep(pattern="meanFreq", x=names(temp),invert=TRUE)]

##change variable names to make them more descriptive
names(mean_std_data)<- gsub(pattern="-", replacement=".",names(mean_std_data))
names(mean_std_data)<- sub(pattern="()", replacement="",names(mean_std_data),fixed=TRUE)

##label the activities with meaningful names
y_all$V1 <- factor(y_all$V1, levels=c(1,2,3,4,5,6),
               labels=c('WALKING','WALKING_UPSTAIRS','WALKING_DOWNSTAIRS','SITTING','STANDING','LAYING'))
y_all<-mutate(y_all,activity=V1)%>%select(activity)


##rename the subject variable in subject_all
subject_all<-mutate(subject_all,subjectID=V1)%>%select(subjectID)


##combine mean_std_data,y_all, subject_all
temp<-cbind(mean_std_data,y_all)
new_data<-cbind(temp,subject_all)

rm(list=c("X_all","subject_all","y_all","mean_std_data","features","temp"))

##creates a second, independent tidy data set with the average of each variable for each activity and each subject.
final_data<-new_data%>%group_by(subjectID,activity)%>%summarise_each(funs(mean))

##write the dataset into a file
write.table(final_data, "subject_activity_mean.txt", row.name=FALSE)

