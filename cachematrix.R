## Creating matrixes and calculating inversed ones

## Following Creates Special Matrix Type Object

makeCacheMatrix <- function(x = matrix()) {
    m <- matrix ()
    set <- function (y) {
        x <<- y
        m <<- matrix ()
    }
    get <- function () x
    setsolve <- function (solve) m <<- solve
    getsolve <- function () m
    list (set = set, get = get, 
          setsolve = setsolve, 
          getsolve = getsolve)
    
}


## Following Calclates an inverse matrix

cacheSolve <- function(x, ...) {
    m <- x$getsolve()
    if (!is.na(m[1][1])) {
        message("getting cached data")
        return (m)
    }
    data <- x$get()
    m <- solve (data, ...)
    x$setsolve (m)
    m
}
