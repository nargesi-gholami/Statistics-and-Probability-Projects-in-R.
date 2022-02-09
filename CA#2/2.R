#1
x1 <- runif(1, min = 0, max = 1)
#2
x2<-runif(1,0,1)
{
  if(x2 <= 0.6)
    x22 <- 1
  else 
    x22 <- 0
}
#3
bern <- function(n,p){
x <- c()
for (i in 1:n) {
           u <- runif(1,0,1)
           if (u <= p)
                 x <- c(x, 1)
             else
                 x <- c(x, 0)
  }
  return (x)
}
z <- c()
for (i in 1:100) {
  m <- sum(bern(10,0.6))
  z <- c(m,z)
}

mean(z)
var(z)


