mtcars <- read.csv("C:/Users/Mymaster/Desktop/Adhishree/Data Analytics/All files shared by Vinod Sir/mtcars.csv")
View(mtcars)
rownames(mtcars) <- mtcars$X
mtcars1 <- mtcars[,-1]
View(mtcars1)

#1. Test whether two vectors are exactly equal (element by element). 
vec1 = c(rownames(mtcars[1:15,])) 
vec2 = c(rownames(mtcars[11:25,])) 
vec1
vec2
identical(vec1, vec2, num.eq = TRUE, single.NA = TRUE, attrib.as.set = TRUE,
          ignore.bytecode = TRUE, ignore.environment = FALSE,
          ignore.srcref = TRUE)
#or
F <- function(a,b) identical(sort(vec1),sort(vec2))
F
#2. Sort the character vector in ascending order and descending order. 
vec1 = c(rownames(mtcars[1:15,])) 
vec2 = c(rownames(mtcars[11:25,])) 

sort(vec1, decreasing = FALSE) #Ascending order
sort(vec1, decreasing = TRUE) #Descending order
#3. What is the major difference between str() and paste() show an example. 
paste converts its arguments (via as.character) to character strings, and concatenates them (separating them by the string given by sep). If the arguments are vectors, they are concatenated term-by-term to give a character vector result. Vector arguments are recycled as needed, with zero-length arguments being recycled to "".

Compactly display the internal structure of an R object, a diagnostic function and an alternative to summary (and to some extent, dput). Ideally, only one line for each 'basic' structure is displayed. It is especially well suited to compactly display the (abbreviated) contents of (possibly nested) lists. The idea is to give reasonable output for any R object. It calls args for (non-primitive) function objects.

#4. Introduce a separator when concatenating the strings. 
Separator is a character string to separate the terms.