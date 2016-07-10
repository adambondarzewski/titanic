

#data structure
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