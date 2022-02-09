x <- array(numeric())
for (i in 1:1000) {
  u <- runif(1, min = 0, max = 1)
  x <- c(x, -log(u))
}
hist(x)



