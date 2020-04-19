
myvar1 <-  matrix(1:10, nrow=5, ncol=2)
myvar1 <-  matrix(NA, nrow=0, ncol=0)
myvar1 <-  matrix(c(1,2), nrow=1, ncol=2)
myvar1 <-  matrix(c(1,2), nrow=2, ncol=1)

myvar1
mytranspose(myvar1)

myvar2 <- c(1,2,NA,3)
myvar2 <- c(NA)
myvar2 <- c()

myvar2
mytranspose(myvar2)

d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata3 <- data.frame(d,e,f)

mydata3
mytranspose(mydata3)
