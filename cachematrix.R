## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  
  getinverse <- function() inverse
  
  setinverse <- function() inverse <<- solve(x)
  
  list(get = getinverse, set = setinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  if(is.null(x$get())){
    x$set()
  }
  x$get()
}
