#----------------
x1 <- c() 
for (i in 1:10000) {
  u <- mean(rexp(1,rate = 1))
  x1 <- c(x1,u)
}
hist(x1,probability = TRUE, main = "n = 1")

x <- seq(min(x1),max(x1), length=10000)
y1 <- dnorm(x,mean = 1, sd = sqrt(1/5))
lines(x,y1,col = "blue", lwd = 2)

par(new=TRUE)
plot(exp(-x), col = "red", lwd =1)

#//////////////////////////////////

x2 <- c() 
for (i in 1:10000) {
  u <- mean(rexp(10, rate = 1))
  x2 <- c(x2,u)
}
hist(x2,probability = TRUE, main = "n = 10")

x <- seq(min(x2),max(x2), length=10000)
y2 <- dnorm(x,mean = 1, sd = sqrt(1/10))
lines(x,y2,col = "blue", lwd = 2)

par(new=TRUE)
plot(exp(-x), col = "red")

#//////////////////////////////////

x3 <- c()
for (i in 1:10000) {
  u <-mean(rexp(100,rate = 1))
  x3 <- c(x3,u)
}
hist(x3,probability = TRUE, main = "n = 100")

x <- seq(min(x3),max(x3), length=10000)
y3 <- dnorm(x,mean = 1, sd = 1/10)
lines(x,y3,col = "blue", lwd = 2)

par(new=TRUE)
plot(exp(-x), col = "red")
#//////////////////////////////////

x4 <- c()
for (i in 1:10000) {
  u <-mean(rexp(1000,rate = 1))
  x4 <- c(x4,u)
}
hist(x4,probability = TRUE, main = "n = 1000")

x <- seq(min(x4),max(x4), length=10000)
y4 <- dnorm(x,mean = 1, sd = sqrt(1/1000))
lines(x,y4,col = "blue", lwd = 2)

par(new=TRUE)
plot(exp(-x), col = "red")


#////////////////////////////////

x5 <- c()
for (i in 1:10000) {
  u <- mean(rexp(10000,rate = 1))
  x5 <- c(x5,u)
}
hist(x5,probability = TRUE, main = "n = 10000")

x <- seq(min(x5),max(x5), length=10000)
y5 <- dnorm(x,mean = 1, sd = 1/100)
lines(x,y5,col = "blue", lwd = 2)

par(new=TRUE)
plot(exp(-x), col = "red")

#//////////////////second part
y <- c()
v <- c()
for (n in 1:1000) {
  for (j in 1:1000) {
    u <- mean(rexp(n,rate = 1))
    y <- c(y,u)
  }
  v <- c(v,var(y))
}

plot(v)
