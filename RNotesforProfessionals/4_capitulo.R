
matrix(data = 1:6, nrow = 2, ncol = 3)

matrix(data = 1:6, nrow = 2, ncol = 3, byrow = TRUE)

matrix(data = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), nrow = 3, ncol = 2)

matrix(data = c("a", "b", "c", "d", "e", "f"), nrow = 3, ncol = 2)

#Criando matriz, colunas e linhas

mat1 <- matrix(data = 1:6, nrow = 2, ncol = 3, byrow = TRUE)

mat1

rownames(mat1)

colnames(mat1)

rownames(mat1) <- c("Row 1", "Row 2")
colnames(mat1) <- c("Col 1", "Col 2", "Col 3")
