View(outcome)
#1
outcome.data <- data.frame(
  age <- c(outcome$age),
  workclass <- c(outcome$workclass),
  education <- c(outcome$education),
  martial_status <- c(outcome$martial.status),
  occupation <- c(outcome$occupation),
  relationship <- c(outcome$relationship),
  race <- c(outcome$race),
  sex <- c(outcome$sex),
  native_country <- c(outcome$native.country),
  income <- c(outcome$income)
)

#2
result <- data.frame(outcome.data$age)
head(outcome.data,n = 5)
#3
fre <- table(outcome$age)
print(fre)

count <- table(outcome$income,outcome$native.country)
barplot(count,beside = TRUE,col = c("light blue","pink"),legend.text = T
        , main = "Contry and income",las = 2,ylim = c(0,500))
#4
table1 <- table(outcome$income,outcome$education) 
mosaicplot(table1,col = c("light blue","pink")
           , main = "education and income",las = 1, cex.axis = 0.5)
#5
plot(ecdf(outcome$age),main = "age")

