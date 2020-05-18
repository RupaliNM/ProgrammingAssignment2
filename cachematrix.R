## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
##This function creates a special "matrix" object that can cache its inverse.
  ## Assumption is that input matrices are all invertible. 
  MT <- NULL
  set <- function (y) {
    x <<- y 
    MT <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) MT <<- inverse
  getinv <- function() MT
  list(set = set, get = get, setinv = setinv, getinv = getinv)
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
