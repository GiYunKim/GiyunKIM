
mytranspose <- function(x) {
  if(is.null(x)){
    return(x)
  }
  else if(all(is.na(x))){
    return(x)
  }
  else{
  a <- as.matrix(x)
  
  y <- matrix(1, nrow=ncol(a), ncol = nrow(a))
  for(i in 0:nrow(a)) {
    for(j in 0:ncol(a)) {
      y[j,i] <- a[i,j]
    }
  }
  if(is.matrix(x)){
      return(y)
  }
  else if(is.vector(x)){
      return(cbind(x))
    }
  else if(is.data.frame(x)){
      return(as.data.frame(y))
    }
  }
}



