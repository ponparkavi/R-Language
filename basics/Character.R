#========================String character=================

a <- "hello"
b <- 'hello'
c <- " hii 
this is multi line string"                   # print in same line as \n

c
cat(c)                                 # print multi-line string as given line 
print(c)

class(c)

# In R language there is "no" special data type as "String" 
# all are character

#===================string functions======================

a <- "hello"
b <- "Buddy!"

nchar(a)                 # length of the string

paste(a,b,sep=" @:) ")
paste(a,b)                        # print with space
paste0(a,b)                   # print without space

grepl("l",a)     # to find whether the char present in that sequence or not , output : TRUE/FALSE

substr(a,2,3)


#==================================task==================================


a <- 100
b <- as.character(a)
paste("Score is ",b)
class(b)

c <- "Programming"
paste(substr(c,1,3), substr(c,4,7), substr(c,9,10))


#-------------------------------------------------------------------------