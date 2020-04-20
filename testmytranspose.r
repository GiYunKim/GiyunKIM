
myvar1 <-  matrix(1:10, nrow=5, ncol=2) #use t() to see the expected transopse matrix 
assertthat::are_equal(t(myvar1),mytranspose(myvar1))


myvar2 <-  matrix(NA, nrow=0, ncol=0) #use t() to see the expected transopse matrix 
assertthat::are_equal(t(myvar2),mytranspose(myvar2))


myvar3 <-  matrix(c(1,2), nrow=1, ncol=2) #use t() to see the expected transopse matrix 
assertthat::are_equal(t(myvar3),mytranspose(myvar3))


myvar4 <-  matrix(c(1,2), nrow=2, ncol=1) #use t() to see the expected transopse matrix 
assertthat::are_equal(t(myvar4),mytranspose(myvar4))


myvar5 <- c(1,2,NA,3) #use cbind to see whether mytransopse worked well
A <- mytranspose(myvar5)
A
B <- cbind(myvar5)
B
A[2] == B[2]


myvar6 <- c(NA) # use myvar6 to see the expected transopse vector
assertthat::are_equal(myvar6,mytranspose(myvar6))


myvar7 <- c() # use cbind to see the expexted transopse vector
assertthat::are_equal(cbind(myvar7),mytranspose(myvar7))


d <- c(1,2,3,4) #use mydata3[1,2] == M3[2,1] to see whether mytransopse worked well
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata3 <- data.frame(d,e,f)
M3 <- mytranspose(mydata3)
M3
mydata3[1,2] == M3[2,1]  

