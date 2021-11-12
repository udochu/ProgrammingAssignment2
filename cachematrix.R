

makeCacheMatrix <- function(x = matrix()) {
     inv <-NULL
      set <- function(y){
             x <<- y
             inv <<- NULL
      }
      get <- function() {x}
      setinverse<- function (inverse) {inv <<- inverse}
      getinverse <- function() {inv}
      list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
        
}

 
## part 2 

cacheSolve <- function(x, ...) {
       inv <- X$getinverse()
        if(! is.null(inv)){
         message("gettting cached data")
          return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setinverse(inv)
}
