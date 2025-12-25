#============================data visualization=================================

# to find patterns { string theory }

x <- c(4,3,2,1.5,2,3,4,5,6,6.5,6,5,4) #
y <- c(0,2,4,6,8,10,7,10,8,6,4,2,0)  #

x1 <- c(1,2,3,4,5,6,7,8)
y1 <- c(1,2,4,5,6,8,9,10)

plot(x,y,
     main="sample graph",
     xlab="X-Axis ",
     ylab="Y-axis",
     type = "b",# p => points , l => line , b => both line & points 
     col= "green", 
     cex = 1.3 ,    #point size {character expansion}
     pch =10 ,      # 1-19 point shape
     lwd=4,        #line broadness (breadth)
     lty=4 ,    #1=>solid 2=> solid dotted 3=>dotted 4=> dot,dash(._._)
     xlim=c(0,8),
     ylim = c(0,15)
     )
#grid()
lines(x1,y1,
      col="red",
      lwd=5,
      lty=3,
      xlab="line 2",
      ylab ="line 2 "
      )

legend(
  "topleft",
  legend=c("product_1","productt_2"),
  col=c("green","red"),
  pch=16
  
)
  





#----------------------------------------------------------------











