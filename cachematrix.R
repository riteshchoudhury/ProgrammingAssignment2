## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
