preda <- function(x, k) { #trainning data
  n <- length(x) 
  k2 <- k/2
  pred <- vector(length=n-k)
  for (i in 1:(n-k)){
    if (sum(x[i:(i+k-1)]) >= k2) {
      pred[i] <- 1
    } else {
      pred[i] <-0
    }
  }
  return (mean(abs(pred-x[(k+1):n])))
}

test1<- function(x,k){
  n <- length(x) 
  k2 <- k/2
  print (k2)
  pred <- vector(length=n-k)
  print(n-k)
  for (i in 1:(n-k)){
    print (sum(x[i:(i+k-1)]))
  }
}