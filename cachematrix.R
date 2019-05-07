## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m <- matrix()
	set <- function(y){
		x <<- y
		m <<- NA
	}
	get <- function() x
	setin <- function(solved) m <<- solved
	getin <- function() m
	matrix(c(set, get, setin, getin), 2, 2)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x[[4]]()
	if(!is.na(m[[1]])){
		message("getting cached data")
		return(m)	
	}
	data <- x[[2]]()
	m <- solve(data)
	x[[3]](m)
	m
}
