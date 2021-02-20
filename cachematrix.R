## two functions to calculate the inverse
## of a matrix

## Create a matrix to calculated it's inverse

makeCacheMatrix <- function(s = matrix()){
   ## The property of the inverse     
  a <- NULL
        
   ## The way to set the matrix     
  set <- function(y){
    s <<- y
    a <<- NULL
  }
        
  ## The way to get the matrix
  get <- function(){s}
        
  ## The way to set the inverse of the matrix
  setInverse <- function(Inverse){
    a <<- Inverse
  }
        
  ## The way to get the inverse of the matrix
  getInverse <- function(){a}
      
        
  ## Return a list clarifying the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
} 


## We create a second function to get the inverse of the matrix 

cacheSolve <- function(x, ...) {
        a <- x$getInverse()
  if(!is.null(a)){message("getting cached data")
    return(a)
        ## Return a matrix that is the inverse of 'x'
}
 ## Get the matrix 
 data <- x$get()
  
  ## calculate the inverse of the matrix of the fisrt function 
  a <- solve(data,...)
        
  ## set the inverse of the matrix of the first function
  x$setInverse(a)
  ## Print or return the inverse of the matrix 
  a
}
