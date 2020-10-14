## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## defining list of functions for the matrix

makeCacheMatrix <- function(x = matrix()) {
invert<-NULL
set<-function(y){
  x<<-y
  invert<<-NULL
}
get <- function() x
setmatrix <- function(solve) invert <<- solve
getmatrix <- function() invert
list(set = set, get = get, setInverse = setmatrix, getInverse = getmatrix)
}


## Write a short comment describing this function
## To check if the inversr of the matrix is in cache else put it in cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invert<-x$getmatrix()
  if(!is.null(invert)){
    message("displaying cached data")
    return(invert)
  }
  new_matrix<-x$get()
  invert<-solve(new_matrix, ...)
  x$setmatrix(invert)
  invert
}
