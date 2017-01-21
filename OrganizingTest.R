# Program

columnsDimensions = as.numeric(readline("Dimensions: How many columns do you want?: "))
rowsDimensions = as.numeric(readline("Dimensions: How many rows do you want?: "))

#---------------------------------------------------------------------------------------------
# Creating the Data Frame
df = data.frame(c(1:rowsDimensions))

i = 1
while (i < columnsDimensions) {
  newRow = data.frame(c(1:rowsDimensions))
  df = cbind(df, newRow)
  i = i + 1
  print(i)
}
rm(i)
rm(newRow)
#---------------------------------------------------------------------------------------------
# Naming the columns
i = 1
while (i < columnsDimensions + 1) {
  columnName = readline("Column Name?: ")
  colnames(df)[i] = c(columnName)
  i = i + 1
  print(i)
}
rm(i)
rm(columnName)
#---------------------------------------------------------------------------------------------
# Naming the rows
i = 1
while (i < rowsDimensions + 1) {
  rowName = readline("Row Name?: ")
  rownames(df)[i] = c(rowName)
  i = i + 1
  print(i)
}
rm(i)
rm(rowName)
#---------------------------------------------------------------------------------------------
# Fills in Data Table with your values
i2 = 0
i = 0
row = 1
across = 1
print(df)
while(i2 < columnsDimensions) {
  while(i < rowsDimensions) {
    value = readline("Value?: ")
    df[row,across] = value 
    row = row + 1
    print(df)
    i = i + 1
  }
  across = across + 1
  i2 = i2 + 1
  i = 0
  row = 1
}
rm(across)
rm(i)
rm(i2)
rm(row)
rm(value)
#---------------------------------------------------------------------------------------------