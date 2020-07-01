## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
   ## define the argument with default mode of "matrix"
        ## initialize inv as NULL; will hold value of matrix inverse
   ## define the set function to assign new
        ## value of matrix in parent environment
   ## if there is a new matrix, reset inverse to NULL
        ## define the get fucntion - returns value of the matrix argument
   ## assigns value of inverse in parent environment
        ## gets the value of inv where called
   ## you need this in order to refer
        ## to the functions with the $ operator   
  j <- NULL
  set <- function(y){
  x <<- y
  j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}

##Please include your own comment to explain your code (Required in Rubric)

cacheSolve <- function(x, ...) {
        ## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed),
        ## then cacheSolve will retrieve the inverse from the cache
## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
  message("getting cached data")
  return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}
