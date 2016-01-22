cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      m <- x$getinv()
      if(!isnull(m)) {
            message ("getting cached data")
            return (m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setinv(m)
      m
}
