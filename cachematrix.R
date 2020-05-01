## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ##Initialize the inverse property
    i <- NULL
    set <- function(y){
        x <<- y
        i <<- NULL
    }
    ##Method the get the matrix
    get <- function() {x} ##Return the matrix
    ##Way to set the inverse of the matrix
    setins <- function(inv) {i <<- Inverse}
    #Way to get inverse of the matrix
    getins <- function() {i} ##Back the inverse property
    ##Back a list of the methods
    list(set=set, get=get,setins=setins, getins=getins)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getins()
    if(!is.null(i)){
      message("getting cached data")
      return(i)
    }
    ##Compute the inverse via matrix multiplication
    mt <- x$get()
    i <- Inverse(mt,...)
    x$setins(i)    
    i
}
