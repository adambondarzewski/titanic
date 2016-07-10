

#data structure
str(DT_train)
str(DT_test)

# Survival rates in absolute numbers
table(DT_train$Survived)

# Survival rates in proportions

prop.table(table(DT_train$Survived))
# Two-way comparison: Sex and Survived

table(DT_train$Sex, DT_train$Survived)
# Two-way comparison: row-wise proportions
prop.table(table(DT_train$Sex, DT_train$Survived),1)


# Create the column child, and indicate whether child or no child
DT_train$Child <- NA
DT_train$Child[DT_train$Age < 18] <-1
DT_train$Child[DT_train$Age >= 18] <-0

# Two-way comparison
prop.table(table(DT_train$Child, DT_train$Survived))