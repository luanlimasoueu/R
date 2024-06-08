#Exemplo
c <- 10
f <- function(a, b) 
{ 
  a + b + c 
} 
f(8, 5)  

#Exemplo
a <- 10
b <- function() 
{ 
  c <- 11
  c(a, c) 
} 
b() 

#Exemplo
a <- 10
g <- function(){ 
  b <- 20
  h <- function(){ 
    c <- 30
    c(a, b, c)  
  } 
  h() 
} 
g() 

#Exemplo
a <- function(z){ 
  b <- 10
  function(){ 
    z + 4 * b 
  } 
} 
x <- a(10) 
x()  


#Exemplo
a <- function(x) 10 * x 
b <- function(){ 
  a <- function(x) x + 10
  a(12) 
} 
b() 

#Exemplo
a <- function(){ 
  if(!exists("z")) 
  { 
    z <- 10
  } 
  else
  { 
    z <- z+10
  } 
  z 
} 
a() 