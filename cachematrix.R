## This function
##creates the makeCacheMatrix
##Sets the values of the matrix
##Gets the value of the matrix


makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  set_matrix<-function(solve)
    m<<- solve
  get_matrix<-function() m
  list(set=set, get=get,
       set_matrix=setmatrix,
       get_matrix=getmatrix)
}

## this function calculates the inverse of the function made above 
## but first checks to see if the inverse has already been calculated
cachematrix<-function (x=matrix, ...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}
makeCacheMatrix <- function(x = matrix()) {

}



