## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


##This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  ## starts inverse property
  inv <- NULL
  setMatrix <- function(y) {
    x <<- y
    inv <<- NULL
  }
  getMatrix <- function() x
 
 ##way to set the inverse of the matrix
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  
  ##list of methods used to create function
  list(setMatrix=set, getMatrix=get, setinverse=setinverse, getinverse=getinverse)
}


##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  ## above code computes the inverse of the special "matrix" returned by makeCacheMatrix above
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
   
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}
