## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Function creates a list contaning 4 elements which are functions that get or set the matrix and its inverse.    

cacheSolve <- function(x, ...) {
        m <- x$getinv()
  if(!is.null(m)) {
    message ("cached data")
    return(m)
  }
  matrix <- x$get()
  m <- solve(matrix,...)
  x$setinv(m)
  m
        ## A function that uses the list from the function above to calculate then cache the inverse of the given matrix. 
}
