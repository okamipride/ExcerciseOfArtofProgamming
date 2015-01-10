findud <- function(v) {
  # v 的第一個值減去 - v 的最後一個值減去
  vud <- v[-1] - v[-length(v)]
  return (ifelse(vud > 0, 1, -1))
}

udcorr <- function(x,y) {
  ud <- lapply(list(x,y), findud)
  print(ud);
  return(mean(ud[[1]])) == ud[[2]]
}
