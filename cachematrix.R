## Put comments here that give an overall description of what your
## functions do
## Create two functions to cache a matrix and then to cache
## The inverse of the matrix

## Write a short comment describing this function
## Create a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  
## Initialize the inverse property
        i <- NULL
  
## Set the matrix
        set <- function( matrix ) {
                m <<- matrix
                i <<- NULL
        }
  
## Get the matrix
        get <- function() {
## Return the matrix
                m
        }
  
## Set the inverse of the matrix
        setInverse <- function(inverse) {
                i <<- inverse
        }
  
## Get the inverse of the matrix
        getInverse <- function() {
## Return the inverse property
                i
        }
  
## Return a list of the methods
        list(set = set, get = get,
                setInverse = setInverse,
                getInverse = getInverse)
  
}


## Write a short comment describing this function
## Compute the inverse of the matrix returned by "makeCacheMatrix"
## If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" should retrieve the inverse from the cache.
## Thank you DJ for the suggestion

cacheSolve <- function(x, ...) {

## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
  
## Return the inverse if its already set
        if( !is.null(m) ) {
                message("getting cached data")
                return(m)
        }
  
## Get the matrix from our object
        data <- x$get()
  
## Calculate the inverse using matrix
        m <- solve(data) %*% data
  
## Set the inverse to the object
        x$setInverse(m)
  
## Return the matrix 
        m
}

