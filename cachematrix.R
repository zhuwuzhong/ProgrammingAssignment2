## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix contains a list of functions
## set and get are the setter and getter function of x
## when a new matrix being assigned to x, the cached is clear
## setmatrix and getmatrix are the setter and getter for cached 
## x(cachedMatrix)
makeCacheMatrix <- function(x = matrix()) {
	cachedMatrix <- NULL
	set <- function(y){
		x <<- y
		cachedMatrix <<- NULL
	}
	get <- function() x
	setmatrix <- function(solve) cachedMatrix<<- solve
	getmatrix <- function() cachedMatrix
	list(set=set, get=get,
	   setmatrix=setmatrix,
	   getmatrix=getmatrix)
	
}


## Write a short comment describing this function
## if a cached value is found, returns the cached answer
## else calculate the inverse matrix and assigned result to
## cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		cachedMatrix <- x$getmatrix()
		if(!is.null(cachedMatrix)){
		  message("getting cached data")
		  return(cachedMatrix)
		}
		data <- x$get() 
		result <- solve(data, ...)
		x$setmatrix(result)
		result
}
