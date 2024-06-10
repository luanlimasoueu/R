#Exemplo
x <- 2

if (x == 1) {         
  Sys.time()
}


x <- 1

if (x == 1) {         
  Sys.time()
}


x <- c(1, 3, 10, 15)

if (class(x) == "numeric") {
  sum(x)
}


x <- c("a", "b", "c")

if (class(x) == "numeric") {
  sum(x)
}


#Exemplo
minha_soma <- function(x, y) {
  if (class(x) == "numeric" & class(y) == "numeric") {
    x + y
  }
}

# Retorna a soma
minha_soma(1, 2)

# Não retorna nada
minha_soma("a", "b")


#Exemplo
# Devolvendo um resultado antecipadamente
minha_soma_NA <- function(x, y) {
  if (class(x) == "numeric" & class(y) == "numeric") {
    soma <- x + y
    return(soma)
  }
  
  NA
}

minha_soma_NA(1, 2)

minha_soma_NA("a", "b")

minha_soma_NA(1, "b")


#Exemplo
minha_soma_erro <- function(x, y) {
  if (class(x) != "numeric" | class(y) != "numeric") {
    stop("A classe dos objetos x e y deve ser numérica.")
  }
  
  x + y
}

minha_soma_erro(1, 2)


#Exemplo
x <- c(1, 3, 10, 15)

if (class(x) == "numeric") {
  sum(x)
} else {
  NA
}


x <- c(1, 3, 10, "15")

if (class(x) == "numeric") {
  sum(x)
} else {
  NA
}


#Exemplo

x <- 0

if(x < 0) {
  
  "negativo"
  
} else if(x == 0) {
  
  "neutro"
  
} else if(x > 0) {
  
  "positivo"
}


#Exemplo
x <- 0

if(x < 0) {
  
  "negativo"
  
} else if(x == 0) {
  
  "neutro"
  
} else {
  
  "positivo"
}


#Exemplo
numero_de_colunas <- ncol(mtcars)

for (coluna in 1:numero_de_colunas) {
  media <- mean(mtcars[,coluna])
  
  print(media)
}


#Exemplo
numero_de_colunas <- ncol(mtcars)

# Antes, criamos um vetor vazio.
medias <- c()

for (coluna in 1:numero_de_colunas) {
  medias[coluna] <- mean(mtcars[,coluna])
}

medias


#Exemplo
i <- 1

while (i < 3){
  print(i)
  i <-  i + 1
}













