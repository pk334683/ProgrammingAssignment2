## Put comments here that give an overall description of what your
## functions do

## It is a special Matrix - it is able to store its inverse
## returns list with get & set functions

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  
  getinverse <- function() inverse
  
  setinverse <- function() inverse <<- solve(x)
  
  list(get = getinverse, set = setinverse)
}



## Computes the inverse of a matrix x if it has not been done before
## returns inverse of x matrix

cacheSolve <- function(x, ...) {
  if(is.null(x$get())){
    message("solve(x)")
    x$set()
  }
  x$get()
}
