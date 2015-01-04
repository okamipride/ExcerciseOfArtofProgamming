findrins1 <- function(x, k) {
  n <- length(x)
  runs <- NULL
  for (i in 1:(n-k+1)) { #最後可能的run的第一個
      if (all(x[i:(i+k-1)] == 1)) {
        print(x[i:(i+k-1)])
        runs <- c(runs,i)
      }
  }
  return (runs)
}
## subsetting 2 values
test1 <- function(x) {
  
  for (i in 1:(length(x)-2+1)) {
    u <- x[i:(i+1)]
    print(u)
  }
  
}
findruns2 <- function(x, k) {
  n <- length(x)
  runs <- vector(length=n)
  count <-0
  for (i in 1:(n-k+1)) { #最後可能的run的第一個
    if (all(x[i:(i+k-1)] == 1)) {
      print(x[i:(i+k-1)])
      count <- count + 1
      runs[count] <- i
    }
  }
  
  runs <- runs[1:count]
  
  return (runs)
}

