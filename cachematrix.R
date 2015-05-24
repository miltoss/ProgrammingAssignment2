## By miltoss

## I adapted the code from the example with the vector a bit
## to fit my style of programming and to make the code a 
## bit more readable.

## To test the code look at the following comment block

##--------------------------------------------------------------
## This block code for testing the functions.
## Uncomment the lines with a single #


## Remove any existing matrix before starting
# rm(z)

## Initialize matrix. Just use a simple case of a matrix
##        [,1] [,2]
##   [1,]    1    3
##   [2,]    2    4
## The inverse matrix is
##       [,1] [,2]
##  [1,]   -2  1.5
##  [2,]    1 -0.5

# z <- makeCacheMatrix()
# z$set(matrix(1:4,2,2))

## Retrieve the original matrix for testing
# z$get()

## Get the inverse. Notice the different messages the first and
## second time you run the code
# cacheSolve(z)
# cacheSolve(z)
##--------------------------------------------------------------


makeCacheMatrix <- function(x = matrix()) {
    # Creates the matrix "object" and provides fir the following: 
    # set : set the matrix to a given input
    # get : retrieve the matrix
    # setsolve : calculate the matrix inverse and cache it
    # getsolve : retrieve the matrix inverse from cache 
        
    m <- NULL
    
    set <- function(y) {                       # Set the matrix
        x <<- y
        m <<- NULL 
    }
    get <- function() x                        # retrieve the matrix
    setsolve <- function(solved) m <<- solved  # cache the inverse
    getsolve <- function() m                   # retrieve the inverse from the cache
    
    # Return a list of functions
    list(set = set, 
         get = get,
         setsolve = setsolve,
         getsolve = getsolve)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'. Checks if the inverse
    ## has already been calculated and cached. If so, retrieves it from 
    ## the cache. Otherwise calculates the inverse and caches it.
    
    # Get the content of the cache
    the_inverse <- x$getsolve()
    
    # If the cache is not null, return its content
    if(!is.null(the_inverse)) {
        message("getting cached data")
        return(the_inverse)
    }
    
    # otherwise retrieve the matrix, calcuate the inverse and cache it
    else {  
    message("Calculating Inverse")
    the_matrix <- x$get()                 # retrieve the matrix      
    the_inverse <- solve(the_matrix)      # calculate the inverse
    x$setsolve(the_inverse)               # cache the inverse for the next call
    return(the_inverse)                   # return the inverse
    }
        
}
