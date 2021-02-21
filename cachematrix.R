## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function makes a matrix and sets its values. it also sets and gets its inverse
makeCacheMatrix <- function(x = matrix()) 
{
  inverse <- NULL
  set <- function(y)
  {
    x <<- y
    inverse <- NULL
  }
  get <- function() {x}
  setinv <- function(inv) 
  {
    inverse <<- inv
  }
  getinv <- function() {inverse}
  list(set = set,get = get,setinv = setinv,getinv = getinv)
  
  
}


## Write a short comment describing this function
## This second function calculates the inverse of the matrix
cacheSolve <- function(x, ...) 
{
  inverse <- x$getinv()
  if(!is.null(inverse))
  {
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data,...)
  x$setinv(inverse)
  inverse
        ## Return a matrix that is the inverse of 'x'
}
