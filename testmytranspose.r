
myvar1 <-  matrix(1:10, nrow=5, ncol=2)
assertthat::are_equal(t(myvar1),mytranspose(myvar1))


myvar2 <-  matrix(NA, nrow=0, ncol=0)
assertthat::are_equal(t(myvar2),mytranspose(myvar2))


myvar3 <-  matrix(c(1,2), nrow=1, ncol=2)
assertthat::are_equal(t(myvar3),mytranspose(myvar3))


myvar4 <-  matrix(c(1,2), nrow=2, ncol=1)
assertthat::are_equal(t(myvar4),mytranspose(myvar4))


myvar5 <- c(1,2,NA,3)
A <- mytranspose(myvar5)
A
B <- myvar5
B
A[2] == B[2]


myvar6 <- c(NA)
assertthat::are_equal(myvar6,mytranspose(myvar6))


myvar7 <- c()
assertthat::are_equal(cbind(myvar7),mytranspose(myvar7))


d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata3 <- data.frame(d,e,f)
M3 <- mytranspose(mydata3)
mydata3[1,2] == M3[2,1]  

