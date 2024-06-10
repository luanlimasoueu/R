library(readr)

cars_csv <- read_csv(file = "cars_data.csv")

install.packages("ggplot2")
library(ggplot2)
library(readr)

imdb <- readr::read_rds("imdb.rds")
ggplot(data = imdb)
head(imdb)

ggplot(imdb) +
  geom_point(mapping = aes(x = orcamento, y = receita))

ggplot(imdb) +
  geom_point(mapping = aes(x = orcamento, y = receita)) +
  geom_abline(intercept = 0, slope = 1, color = "red")


ggplot(imdb) +
  geom_abline(intercept = 0, slope = 1, color = "red") +
  geom_point(mapping = aes(x = orcamento, y = receita)) 


library(dplyr, warn.conflicts = FALSE)

imdb %>%
  mutate(lucro = receita - orcamento) %>% 
  ggplot() +
  geom_point(aes(x = orcamento, y = receita, color = lucro))


imdb %>% 
  group_by(ano) %>% 
  summarise(nota_media = mean(nota_imdb, na.rm = TRUE)) %>% 
  ggplot() +
  geom_line(aes(x = ano, y = nota_media))


imdb %>% 
  filter(diretor == "Steven Spielberg") %>% 
  group_by(ano) %>% 
  summarise(nota_media = mean(nota_imdb, na.rm = TRUE)) %>% 
  mutate(nota_media = round(nota_media, 1)) %>% 
  ggplot(aes(x = ano, y = nota_media)) +
  geom_line() +
  geom_label(aes(label = nota_media))


imdb %>% 
  count(diretor) %>%
  slice_max(order_by = n, n = 10) %>% 
  ggplot() +
  geom_col(aes(x = direcao, y = n))

head(mtcars)

imdb %>% 
  filter(diretor == "Steven Spielberg") %>%
  group_by(ano) %>% 
  summarise(nota_media = mean(nota_imdb, na.rm = TRUE)) %>% 
  ggplot() +
  geom_line(aes(x = ano, y = nota_media)) +
  geom_point(aes(x = ano, y = nota_media))

imdb %>% 
  filter(diretor == "Steven Spielberg") %>% 
  group_by(ano) %>% 
  summarise(nota_media = mean(nota_imdb, na.rm = TRUE)) %>% 
  ggplot(aes(x = ano, y = nota_media)) +
  geom_line() +
  geom_point()





