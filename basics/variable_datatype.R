#----------------variable and data types in R------------------


#============variable assignment===============================

a <- 5          #assigning value to variable a  ( <- is assignment operator)
b = 7           #another way of assigning value to variable b


a<-b<-c<-10      #assigning same value to multiple variables
a              #print value of a
b
d=5L            #L indicates integer data type
x<-as.complex(d)   #to convert integer to complex data type
x

#===================================find data type============================

 #  class() function is used to find data type of variable

class(c)
class(d)

#====================================data types================================

#numeric
#integer(L)
#complex(i)
#char (" ")
#logical (true , false)

#===================================type conversion=============================

#as.character()
#as.complex()
#as.integer()
#as.numeric()

#=====================================built-in fn================================

max(2,4,5)                 #find maximum value
min(2,3,45,6.0,1.0)        #find minimum value
sqrt(12)                   # only one argument should be passed to find square root
round(4.5678,2)            # round off to 2 decimal places
abs(-4.7)                  #change to positive value
ceiling(11.3)              #round off => upward
floor(11.3)                #round off => downward


#=====================================task============================================



#            ==========Area of rectangle =======================

length<- 5.6
breadth<- 4
paste("Area of Rectangle is: ", length*breadth) 


#  =======================================================================

a<- 5
b<-10
c<- a+b
d<- c-a
as.character(a)
paste(a, b, c, a)      # paste() function is used to concatenate values


#=============================================================================

