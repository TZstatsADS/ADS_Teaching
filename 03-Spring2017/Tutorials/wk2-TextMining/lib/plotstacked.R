#plot.stacked makes a stacked plot where each y series is plotted on top
#of the each other using filled polygons
#
#Arguments include:
#'x' - a vector of values
#'y' - a matrix of data series (columns) corresponding to x
#'order.method' = c("as.is", "max", "first") 
#  "as.is" - plot in order of y column
#  "max" - plot in order of overall shares of each Y series
#  "first" - plot in order of when each y series first value > 0
#'col' - fill colors for polygons corresponding to y columns (will recycle)
#'border' - border colors for polygons corresponding to y columns (will recycle) (see ?polygon for details)
#'lwd' - border line width for polygons corresponding to y columns (will recycle)
#'...' - other plot arguments

plot.stacked <- function(
  x, y, 
  order.method = "as.is",
  ylab="", xlab="", 
  border = NULL, lwd=1, 
  col=rainbow(length(y[1,])),
  ylim=NULL, stack.lab=colnames(y),
  ...
){
  
  if(sum(y < 0) > 0) error("y cannot contain negative numbers")
  
  if(is.null(border)) border <- par("fg")
  border <- as.vector(matrix(border, nrow=ncol(y), ncol=1))
  col <- as.vector(matrix(col, nrow=ncol(y), ncol=1))
  lwd <- as.vector(matrix(lwd, nrow=ncol(y), ncol=1))
  
  if(order.method == "max") {
    ord <- order(colSums(y), decreasing = T)
    y <- y[, ord]
    col <- col[ord]
    border <- border[ord]
    stack.lab <- stack.lab[ord]
  }
  
  if(order.method == "first") {
    ord <- order(apply(y, 2, function(x) min(which(x>0))))
    y <- y[, ord]
    col <- col[ord]
    border <- border[ord]
    stack.lab <- stack.lab[ord]
  }
  
  top.old <- x*0
  lab.y=0
  polys <- vector(mode="list", ncol(y))
  for(i in seq(polys)){
    top.new <- top.old + y[,i]
    polys[[i]] <- list(x=c(x, rev(x)), y=c(top.old, rev(top.new)))
    top.old <- top.new
    lab.y=c(lab.y, top.new[length(x)])
  }
  
  if(is.null(ylim)) ylim <- range(sapply(polys, function(x) range(x$y, na.rm=TRUE)), na.rm=TRUE)
  plot(x,y[,1], ylab=ylab, xlab=xlab, xlim=c(min(x), max(x)+diff(range(x))*0.1),
       ylim=ylim, t="n", ...)
  for(i in seq(polys)){
    polygon(polys[[i]], border=border[i], col=col[i], lwd=lwd[i])
  }
  
  lab.y.0=lab.y[-1]
  lab.y.1=(seq(0, max(rowSums(y))*0.95, len=ncol(y)+1))[-1]
  print(lab.y.1)
  text(rep(max(x)+diff(range(x))*0.03, ncol(y)),
       lab.y.1, cex=0.8, font=2,
       stack.lab, col=col, adj=0)
  segments(rep(max(x), ncol(y)),
           lab.y.0,
           rep(max(x)+diff(range(x))*0.027, ncol(y)),
           lab.y.1,
           col=col)
  
}