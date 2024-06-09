class(TRUE)

class(FALSE)

1 == 1

"a" == "b"

3 > 3


minha_coluna <- c(1, 3, 0, 10, -1, 5, 20)
minha_coluna > 3

#Valores Especiais

vetor <- c(1, 2, 3)
vetor[4]


idade_ana <- 30
idade_beto <- NA
idade_carla <- NA

idade_ana == idade_beto

is.na(NA)


10^310

nao_sou_um_numero <- NaN
objeto_infinito <- Inf
objeto_nulo <- NULL

is.nan(nao_sou_um_numero)


is.infinite(objeto_infinito)


is.null(objeto_nulo)


#Listas
list(1, "a", TRUE)

lista <- list(1, "a", TRUE)

lista[1]


dados_cliente <- list(cliente = "Ana Silva", idade = 25, estado_civil = NA)

dados_cliente

dados_cliente$cliente

class(dados_cliente[1])

class(dados_cliente$cliente)

#Dataframes

as.list(mtcars)

mtcars$mpg

#Exemplo

dados_cliente <- list(
  cliente = c("Ana Silva", "Beto Pereira", "Carla Souza"),
  idade = c(25, 30, 23),
  estado_civil = c(NA, "Solteiro", "Casada")
)

dados_cliente 

as.data.frame(dados_cliente)


mtcars[,1]

mtcars[1,]














