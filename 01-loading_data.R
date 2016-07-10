library(data.table)

DT_train <- as.data.table(read.csv("http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/train.csv"))
DT_test <- as.data.table(read.csv("http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/test.csv"))

DT_gender_model <- as.data.table(read.csv("https://www.kaggle.com/c/titanic/download/gendermodel.csv"))
DT_gender_class_model <- as.data.table(read.csv("https://www.kaggle.com/c/titanic/download/genderclassmodel.csv"))

table(DT_train$Sex, DT_train$Survived)

str(DT_train)
str(DT_test)

# Survival rates in absolute numbers
table(DT_train$Survived)

# Survival rates in proportions

prop.table(table(DT_train$Survived))
# Two-way comparison: Sex and Survived

table(train$Sex, train$Survived)
# Two-way comparison: row-wise proportions
prop.table(table(train$Sex, train$Survived),1)