

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        
                setMatrix <- function(matrix) {
                        m <<- matrix
                        i <<- NULL
                        
                        }                      
                
                 getMatrix <- function( ) {
                         m
                 }
                setMatrixInverse <- function (solve) i <<- solve
                
                getMatrixInverse <- function () {
                        i
                        }
                
                list( setMatrix = set, getMatrix = get, setMatrixInverse=setMatrixInverse,  getMatrixInverse=getMatrixInverse)
}

cacheSolve <- function(x, ...) {
        m<-x$getMatrix()
        if(!is.null(m)){
        message("cached data")
        return(m)
    }
    dat<-x$geMatrixt()
    m<-solve(dat, ...)
    x$setMatrix(m)
    m
}
