## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Creates list containing a function to get the value of the inverse matrix
## of "x" and a function to set the value of the inverse matrix of "x"


makeCacheMatrix <- function(x = matrix()) {

        cache1 <- x
        getfunction <- function() cache1
        setfunction <- function(x = NULL) {
                cache1 <<- solve(x) 
        }
        list(get = getfunction, set = setfunction)      
        
}

## Write a short comment describing this function
## Checking if exist a inverse matrix of matrix "x" in cache
## If no exist a inverse matrix of matrix "x" calculate and save it in cache.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

       
        cache2 <- cache$get()
        message("Checking cache...")
        if(is.na(cache2[1,1])) {
                message("No previously cached value.")
        } else { 
                message("Previously cached value.");print(cache2);return(message("Finished.") )
        }
        message("Setting new cached value...")
        cache$set(x)
        print(cache$get())
        message("Finished.") 
        
}


## And check its correct

matrix<-rbind(c(2, 0, 1), c(3, 0, 0),c(5,1,1))

cache<-makeCacheMatrix()

cacheSolve(matrix)




