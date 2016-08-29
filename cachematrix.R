## Matrix inversion is usually a costly computation and it benefits a
## lot to caching the inverse of a matrix rather than compute it 
## repeated. The functions below serve the purpose of caching the 
## inverse of a matrix. 


## This function creates a special "matrix" object that can cache its 
## inverse.

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function (y) {
		x <<-y
		inv <<- NULL
	}
	get <-function() x
	setinv <-function(inverse) inv <<- inverse
	getinv <-function() inv
	list(set = set,get = get,
	     setinv = setinv,
	     getinv = getinv)
}


## Computing the inverse of a square matrix can be done with the solve 
## function in R.
 ## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
	inv <- x$getinv()
	if(!is.null(inv)) {
		message("getting cached data")
		return(inv)
	}      
        mymat <-x$get()
        inv<-solve(mymat,...)
        x$setinv(inv)
        inv
}
