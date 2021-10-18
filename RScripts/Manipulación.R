
library(datos)
library(tidyverse)

## crear la variable df con datos datos::vuelos
df <- datos::vuelos
df <- vuelos
## Ver los primeros registros

##muestra

nrow(df)
ncol(df)
dim(df)

1:100


df[sample(nrow(df), 30), ]

summary(vuelos)

df$horario_salida

hist(df$horario_salida)




## Filtros
#and
filter(vuelos, mes == 1, dia == 1)

#or
filter(vuelos, mes == 1 | dia == 1)




por_dia <- group_by(vuelos, anio, mes, dia)
head(por_dia)
summarise(por_dia, atraso = mean(atraso_salida, na.rm = TRUE))


atrasos <- vuelos %>% 
  group_by(destino) %>% 
  summarise(
    conteo = n(),
    distancia = mean(distancia, na.rm = TRUE),
    atraso = mean(atraso_llegada, na.rm = TRUE),
  ) %>% 
  filter(conteo > 20, destino != "HNL")
atrasos



#?apply
sum(vuelos$mes)

apply(vuelos, 1, sum) ## Error al tener strings
apply(vuelos[, c("anio",   "mes",   "dia", "horario_salida", "salida_programada")], 2, sum)
apply(vuelos[, c("anio",   "mes",   "dia", "horario_salida", "salida_programada")], 1, sum)

apply(vuelos[, c("anio",   "mes",   "dia", "horario_salida", "salida_programada")], c(1, 2), round)


#tapply(vuelos[1:10, "distancia"], vuelos[1:10, "destino"], mean)
#Subir ejemplo
vuelos[1:10,]
vuelos[1:5, "anio"]
vuelos[1:5, c("anio", "mes")]


vuelos[vuelos$mes > 6,] # filtros
vuelos[(vuelos$mes > 6) & (vuelos$mes <= 9),]


###histogramas y generación de numero aleatorios
rnorm(100)
hist(rnorm((10000)))
hist(rexp(1000))






