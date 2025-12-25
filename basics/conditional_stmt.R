                       #=======conditional stmt==============

#     if(cond){
#           stmt
#     }


#-------------------------------------------


#     if(cond){
#         stmt  
#     }
#     else{
#         stmt
#     }


#-------------------------------------------


#     if(cond){
#         stmt  
#     }
#     else if(cond){
#         stmt
#     }
#     else{
#         stmt
#     }


#-----------------------------------task1--------------------------------
t <- 30
if(t>=30){
  paste("hot")
}else if(t>20 && t<30){
  paste("warm")
}else if(t<=20){
  paste("cold")
}else{
  paste("nothing ")
}


#---------------------------------task2----------------------------------
a<-5 
b<- 45
c<- 8
if(a>b && a>c){
  paste("largest: ",a)
}else if(b>a && b>c){
  paste("largest: ",b)
}else{
  paste("largest: ",c)
}


#---------------------------------------------------------------------------


if (a==b && b==c && c==a){
  paste("Equailateral")
}else if ( a==b || b==c || a==c){
  paste("Isosceles")
}else{
  paste("scalene")
}


#-------------------------------------------------------------------------
 
   #----------------looping-----(for, while) --------no (do while)----------

for ( x in 1:10){
  print(x)
}

i<-1
while(i < 6){
  print(i)
  i <- i+1
}

     #---------------------------task 1 easy-------------

for ( x in 1:10){
  print(x)
}

k <- 10
while(k>0){
  print(k)
  k <-k-1
}

    #-----------------task 2 moderate-----------------

for ( x in 1:20){if(x%%3==0){
    paste("divide by 3 - ",x)
}
  if(x%%5==0){
    paste("divide by 5 - ",x)
  }
}

i <- 1
while(i<21){if(x%%3==0 && x%%5==0){
    print(x)
  }
  i<-i+1
}


#-------------------------------------------------------



