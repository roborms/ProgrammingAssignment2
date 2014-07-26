acheMatrix will make a default inversible function but allow variables
## to be passed in to make other matrices as well.
## cacheSolve will see if the cs
## variable exists if if it does it will use this cached value.  If not exists
##  it will create a invers matrix of the matrix it's provided and put into cs cache

## create a inversible matrix by default or use different variables.
## will establish a cs variable in .GlobalEnv as null
## unless creating cs from like cs <- makeCacheMatrix
## then cs will be overwritten with a matrix

makeCacheMatrix <- function(x=2,y=2,z=4){
    # cs is the cached solve of the matrix which is set to null
    # but only if this function is not being used to establish cs
    # from the global enviroment
    cs <<- NULL

    # take variables and make a matrix
    s <- matrix(1:z,nrow=x,ncol=y)
    # return the matrix
    return(s)}

## cacheSolve to check if cs is not null value and use it's value to return
## but if cs is NULL then create the inverse matix and store it in cs
## then return value of cs to console

cacheSolve <- function(x){
    #Test For the cs variable being NOT null.
    if(!is.null(cs)){
        message("getting cached data because it exists")
        return(cs)
    }
    #if cs IS null do this
    else{
        message("placing the inverse matrix in cache since it's not there")
            cs <<- solve(x)
            return(cs)
    }
}

