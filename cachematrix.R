## The following functions are caching the inverse of a matrix

## The following is a function that returns a list of functions
## The goal is to store a matrix and a cached value of its inverse
makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(matrix){
		x <<-matrix
		inv <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) i <<- inverse
	getinverse <- function() i
	list (set=set, get=set, setinverse=setinverse, getinverse=getinverse)
	
}


## The following function calculates the inverse of the matrix created
## with the function above
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        matrix <- x$getinverse()
        if(!is.null(matrix)){
        	message("getting cached data")
        	return(matrix)
        }
        
        data <- x$get()
        matrix <- solve(data) 
        x$setInverse(matrix)
        matrix
        
}
