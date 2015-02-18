## This consists of two functions to take a matrix, calculate
## it's inverse and cache the results.  If the matrix inverse
## is already cached, it passes the cached version back,
## skipping the inverse calculation to save time.

## This function creates a special matrix object that can cache
## it's inverse.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve()) m <<- solve()
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)        
}

## This function computes the inverse of the special matrix
## returned by makeCacheMatrix.  If the inverse already exists,
## the calculation is skipped and the cached results are returned
## instead.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
# cachemean <- function(x, ...) {
#         m <- x$getinverse()
#         if(!is.null(m)) {
#                 message("getting cached data")
#                 return(m)
#         }
#         data <- x$get()
#         m <- solve((data, ...))
#         x$setinverse(m)
#         m
# }