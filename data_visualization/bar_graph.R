#==============bar graph ===================

phones <- c("Realme","Samsung","Oppo","Apple")
sales <- c(520,300,460,600)
bb<- barplot(sales,names.arg=phones,
        main="Weekly phones sales",
        xlab="Phone Brand",
        ylab="No of units sold",
        width=2,
        space = 0.5,
        ylim = c(0,650),
        col=c("yellow","green","blue","black")
        )
text(
  x=bb,
  y=sales,
  labels = sales,
  pos=3
)


#==========================task===================================

#=========================group bar =================

week <- c("week1","week2","week3")
collection <- data.frame(
  Avatar = c(900,800,700),
  Dude = c(600,700,900),
  Madhrasi = c(700,400,700),
  bison = c(800,700,900)
)

rownames(collection) <- week

sk <- t(as.matrix(collection))

barplot(
  sk,
  beside = TRUE,                   #side by side
  col=c("blue","orange","red","green"),
  main= " Movie Ticket Sales weekly Report",
  xlab="Week",
  ylab =" No of tickets sold",
  ylim = c(0,1500)
)

legend(
  "topright",
  legend = colnames(collection),
  fill = c("blue","orange","red","green"),
  pch=16 ,
  bty = "b"
)


#-----------------------task--------------------------------

x <- c("Stranger Things","Alice BL","Wednesday","Dark")

st <- c(9838,7393,8233,6321)

bb<-barplot(
  st, names.arg = x,
  main="Webseries Streaming Data",
  xlab="Web Series",
  ylab ="Streaming in Minutes",
  col = c("red","yellow","purple","black"),
  ylim = c(0,15000),
  space=0.5,
  pos=0.3
)
text(
  x=bb,
  y=st,
  labels = st,
  pos = 3
)

legend(
  "topright",
  legend= c("Stranger Things","Alice BL","Wednesday","Dark"),
  fill = c("red","yellow","purple","black"),
  pch=16, 
  bty="b"
)

#------------------------------------------------------------


