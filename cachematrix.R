## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 MT <- x$getinv()
  if(!is.null(MT)) {
    message("getting cached data")
    return(MT)
  }
  data <- x$get()
  MT <- solve(data, ...)
  x$setinv(MT)
  MT
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		 MT <- x$getinv()
  if(!is.null(MT)) {
    message("getting cached data")
    return(MT)
  }
  data <- x$get()
  MT <- solve(data, ...)
  x$setinv(MT)
  MT
}
