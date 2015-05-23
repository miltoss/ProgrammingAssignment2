## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## By miltoss


## The following is code for testing the functions.
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

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
