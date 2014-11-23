

makeCacheMatrix <- function(x = matrix()) {

y <- NULL

s <- function( matrix ) {
	
	x <<- matrix
	y <<- NULL
}

g <- function() {
	
	x
}

sInverse <- function(inverse) {
	
	y <<- inverse
}

gInverse <- function() {
	
	y
}

list (set = s, get = g, setInverse = sInverse, getInvers = gInverse)

}

## this function create a special martix that can cache its inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

s <- x$getInverse()

if( !is.null(s)) {
	
	message("data is caching")
	return(s)
	
}

d <- x$get()
s <- solve(data) %*% data

x$setInverse(s)

m

}
