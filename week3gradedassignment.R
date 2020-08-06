## These functions that enable the creation of a special matrix and 
## thereafter compute the inverse of the matrix.
## makeCacheMatrix allows the user to create a special matrix object that
## can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    a <- NULL
    input <- function(x) {
        y <<- x
        a <<- NULL
    }
    retrieve <- function()y
    inputInverse <- function(solveMatrix)a <<- solveMatrix
    retriveInverse <- function()a
    list(input=input, retrieve=retrieve, inputInverse=inputInverse,
    retrieveInverse=retrieveInverse)
}

## cacheSolve allows the user to compute the inverse of the special "matrix"
## returned by makeCacheMatrix.

cacheSolve <- function(x, ...) {
    a <- y$retrieveInverse()
    if(!is.null(a)){
        print("getting cached data")
        return(a)
        }
    matrix <- y$retrieve()
    a <- solve(matrix,...)
    y$inputInverse(a)
    a  
}