library(data.table)

DT_train <- as.data.table(read.csv("http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/train.csv"))
DT_test <- as.data.table(read.csv("http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/test.csv"))

DT_gender_model <- as.data.table(read.csv("https://www.kaggle.com/c/titanic/download/gendermodel.csv"))
DT_gender_class_model <- as.data.table(read.csv("https://www.kaggle.com/c/titanic/download/genderclassmodel.csv"))

