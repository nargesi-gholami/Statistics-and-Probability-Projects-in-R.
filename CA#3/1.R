par(mfrow = c(2,2))
x <- matrix((rnorm(10*10, mean = 0, sd = sqrt(1/10))), 10, 10, byrow=TRUE)
m <- eigen(x)
plot(m$values,col="red", type = "p",main = "x = 10")



y <- matrix((rnorm(50*50, mean = 0, sd = sqrt(1/50))), 50, 50, byrow=TRUE)
n <- eigen(y)
plot(n$values,col="orange",main = "x = 50")


z <- matrix((rnorm(100*100, mean = 0, sd = sqrt(1/100))), 100, 100, byrow=TRUE)
k <- eigen(z)
plot(k$values,col = "blue",main = "x = 100")
#--------------------------------------

#-----5
par(mfrow = c(2,2))
k1 <- c()
for(i in 1 :100)
{
  x1 <- matrix(rnorm(5*5, mean = 0, sd = sqrt(1/5)), 5, 5, byrow=TRUE)
  n <- eigen(x1)
  k1 <- c(k1, n$values)
}
plot(k1,col = "red",pch = 20,main = "x = 5")

#----15

k2 <- c()
for(i in 1 :100)
{
  x2 <- matrix((rnorm(15*15, mean = 0, sd = sqrt(1/15))), 15, 15, byrow=TRUE)
  n2 <- eigen(x2)
  k2 <- c(k2, n2$values)
}
plot(k2,col = "orange",pch = 20,main = "x = 15")
#----60

k3 <- c()
for(i in 1 :100)
{
  x3 <- matrix((rnorm(60*60, mean = 0, sd = sqrt(1/60))), 60, 60, byrow=TRUE)
  n3 <- eigen(x3)
  k3 <- c(k3, n3$values)
}
plot(k3,col = "pink",pch = 20,main = "x = 60")
#----100

k4 <- c()
for(i in 1 :100)
{
  x4 <- matrix((rnorm(100*100, mean = 0, sd = 1/10)), 100, 100, byrow=TRUE)
  n4 <- eigen(x4)
  k4 <- c(k4, n4$values)
}
plot(k4,col = "purple",pch = 20,main = "x = 100")
#----


