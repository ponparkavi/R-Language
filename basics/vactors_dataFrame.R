#===================================== day 2 ===============================

# data type => store a single data

# data structure => store bulk amount of data



#---------------------vectors(same data type) --------------------------------

# In R language everything is vector



marks <- c(87,89,46,88,56,78)         #declaration

                                      # c() => combine function

# properties:  1 dimensional , ordered, homogenous- same 

marks[1]              # starting is 1 , not as 0 becoz statistics


name <- "AK"    # name is a vector with length 1


marks[1]= 34    #changable
marks

marks[1:3]  # there is no need for n-1 becoz not start with 0

marks[-1]   #89 46 88 56 78(remove the 1st element)

marks[-1:-2]   #46 88 56 78

marks > 70   #FALSE  TRUE FALSE  TRUE FALSE  TRUE

marks[marks>70]  #89 88 78

marks+10       #44 99 56 98 66 88

#--------------------------------------------------------------


c(1,2,3)+c(20,30)      #21 32 23    { concept => RECYCLING }
                       #Warning message:
                      #In c(1, 2, 3) + c(20, 30) :
                      #longer object length is not a multiple of shorter object length

c(1,"2",3)        # "1" "2" "3"


#================================================================


#   Type hierarchy 

# logical --->  integer ---->  double ---> char 

# concept name : Coercion


#================================================================

#class() => outer behaviour 

#typeof() => inner behaviour 

#===============================================================================



length(marks)                       # 6 (to find length)

marks[length(marks)]                # 78  ( to print the last element)

marks[c(1,length(marks))]           # 34 78  (to print 1st and last element)




#-----------------------------------task 1--------------------------------------

num <- (1:30)
num                     #1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 
                        #19 20 21 22 23 24 25 26 27 28 29 30

num[c(11,23,30)]       #11 23 30

num [num<15]        #1  2  3  4  5  6  7  8  9 10 11 12 13 14

num[c(num%%2==0)]      # 2  4  6  8 10 12 14 16 18 20 22 24 26 28 30

num[-1: -10]         #11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

num+100            #101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 
                  #117 118 119 120 121 122 123 124 125 126 127 128 129 130

class(num)    #"integer"

typeof(num)    #"integer"


#--------------------------------task---------------------------------------------------

marvel <- c("Ironman","Captain America","Black widow","Thor","Loki","Moonknight","Thanos","Spiderman","Hulk")

"Loki" %in% marvel

marvel[(nchar(marvel))>6]  #"Ironman"   "Captain America" "Black widow"  "Moonknight"  "Spiderman"

marvel[nchar(marvel)<5]    #"Thor" "Loki" "Hulk"


#--------------------------------------------------------------------------------------

#===================list(for diff. data type )==================================

# ordered collection of anything
 
# references(pointer)

stud <- list(
  name = "AK",
  marks = c(99,98,100),
  passed = TRUE
)

stud$name    # direct access $ , [[ ]]

stud["name"] 
stud[["name"]]
stud[2]                      #with summery 
stud[[2]]          # direct value

stud

stud$name <- "Kowsalya"
stud

stud$rollno <- 27
stud

stud[-3]        # removed but not in memory
stud

stud$passed<-  NULL    #remove in memory
stud

lapply(stud, length)  # to find every length


#------------------------------task----------------------------------------------

st <- list(
  characters = c("Eleven","Mike","Dustin","Lucas","Max","Lucas","Steve")
)
st

st$character[3]

eleven <- list(
  power = "Telekinesis",
  frnds = c("mike","001","dustin","Lucas"),
  season =c(1,2)
)

eleven

eleven$frnds[2]
eleven$season[3:5]<- c(3,4,5)
eleven

eleven$location <- "Hawkins"
eleven

lapply(eleven$frnds,nchar)  
  #--- or---
nchar(eleven$frnds)


eleven$location <- NULL                   # location removed


#===============================================================================


      #------------------- matrix --------------------

# 2 dimension , same type, store as column-wise

m <- matrix(c(1,2,3,4), nrow=2,byrow=TRUE)
m
m[]            # all elements
m[1,]          # 1st row
m[,1]          # 1st column
m[2,2]         # element at 2nd row and 2nd column
m[,3]          # element at 3rd column   # NA becoz only 2 columns are there

# by row wise 
m1 <- matrix(c(1,2,3,4), nrow=2,byrow=TRUE)

m%*%m1        #for matrix multiplication, the matrix must be square matrix


m <- matrix(c(1,2,3,4,5,6,7,8), nrow=3,byrow=TRUE)
m
# by row wise 
m1 <- matrix(c(1,2,3,4,5,6,7,8), nrow=3,byrow=TRUE)

m%*%m1        


m<- matrix(c(1,2,3,4),nrow=2)
v<- c(5,6)
m%*%v

m
t(m)   #transporse of matrix



#=======================data frame( 2 dimension but diff data type)====================
 # example: excel sheet or google sheet



# table like structure (rows and columns)
df <- data.frame(
  name = c("Selva","HRK","Kavi"),      # internally consider as vector
  cgpa = c(9.8,8.9,6.8),
  attendance = c(7,8,4)
)
df

# df has 3 vectors

df$name
df$name[1]
df[["cgpa"]]
df

df$attendance[2] <- 87
df

df[3,] <- NA                     # to remove the entire row 
df$name[df$name=="kavi"] <- NA       # to remove the name 
df
df$cgpa[2:3]<-c(9.81,9.82)
df


#=============================================================================