## These functions are used in the Coursera course "R Programming" as the exercise for week 2

## This function simulates a matrix object with a bit of additional functionality as 
## specified in the assigment.
makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	set <- function(y) {
                x <<- y
                inverse <<- NULL
        }
	get <- function() x
    setInverse <- function(inv) inverse <<- inv
    getInverse <- function() inverse
    list(set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse)
}


## This function calculates the matrix inverse using the solve() function
## if it has not already been calculated and set previously
cacheSolve <- function(x, ...) {
        m <- x$getInverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
		message("calculating the matrix inverse")
        m <- solve(data, ...)
		message("setting the inverse as cached data")
        x$setInverse(m)
        m
}


