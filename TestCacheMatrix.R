
## Here is a way to test the code
rm(z)
z <- makeCacheMatrix()
z$set(matrix(1:4,2,2))
# z$set(matrix(c(3, 2, 4, 7), 2, 2))

## Retrieve the original matrix for testing
z$get()

## Get the inverse. Notice the different messages the first and
## second time you run the code
cacheSolve(z)
cacheSolve(z)


## Here is a way to test the code. I got this from the discussion forum
## Note that the
rm(m)
rm(x)
rm(inv)

m <- matrix(c(-1, -2, 1, 1), 2,2)
m

x <- makeCacheMatrix(m)
x$get()

inv <- cacheSolve(x)
inv
inv <- cacheSolve(x)
inv

