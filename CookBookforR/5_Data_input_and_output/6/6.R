# Criar um dataframe de exemplo
dados <- data.frame(
  coluna1 = c(1, 2, 3),
  coluna2 = c("A", "B", "C"),
  coluna3 = c(1.1, 2.2, 3.3)
)

# Salvar o dataframe em um arquivo CSV
write.csv(dados, "meus_dados.csv", row.names = FALSE)

# Ler o arquivo CSV de volta
dados_lidos <- read.csv("meus_dados.csv")
print(dados_lidos)

# Usando readr
library(readr)
write_csv(dados, "meus_dados_readr.csv")
dados_lidos_readr <- read_csv("meus_dados_readr.csv")
print(dados_lidos_readr)