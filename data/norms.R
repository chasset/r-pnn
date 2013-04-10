norms <- (function(n,m,s,d) {
    a <- cbind(1,rnorm(n,m,s),rnorm(n,m,s))
    b <- cbind(2,rnorm(n,m,s)+d,rnorm(n,m,s))
    c <- cbind(2,rnorm(n,m,s),rnorm(n,m,s)+d)
    d <- cbind(1,rnorm(n,m,s)+d,rnorm(n,m,s)+d)
    e <- as.data.frame(rbind(a,b,c,d))
    names(e) <- c("c", "x", "y")
    return(e)
})(100, 1, 0.25, 1)