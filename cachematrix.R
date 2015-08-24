## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    m<<- y
    i<<- NULL
  }
  get <- function() m
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list (set= set,
        get=get,
        getinverse=getinverse,
        setinverse=setinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  m <- x$get()
  i <- solve(m)
  x$setinverse(i)
  i
}
