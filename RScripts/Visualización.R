install.packages("tidyverse") #instalar paquete
#Sólo es necesario ejecutarlo una ve
install.packages("datos")

library(tidyverse) #cargar paquete
# Se ejecuta cada vez que inicias una sesión de R


## tomamos un dataset como ejemplo
datos::millas #paquete::función

head(datos::millas)
tail(datos::millas)

#El data frame millas contiene observaciones para 38 modelos de automóviles
#recopiladas por la Agencia de Protección Ambiental de los EE. UU.
?datos::millas

# Un data.frame con 234 filas y 11 columnas
# 
# fabricante
# fabricante
# 
# modelo
# nombre del modelo
# 
# cilindrada
# tamaño del motor del automóvil, en litros
# 
# anio
# año de fabricación
# 
# cilindros
# número de cilindros
# 
# transmision
# tipo de transmisión
# 
# traccion
# tipo de tracción (d = delantera, t = trasera, 4 = 4 ruedas)
# 
# ciudad
# millas por galón de combustible en ciudad
# 
# autopista
# millas por galón de combustible en autopista
# 
# combustible
# tipo de combustible (p = premium, r = regular, e = etanol, d = diesel, g = gas natural comprimido)
# 
# clase
# tipo de auto

millas = datos::millas

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista))


#ggplot(data = <DATOS>) +
#<GEOM_FUNCIÓN>(mapping = aes(<MAPEOS>))



ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista))


#ggplot(data = <DATOS>) +
#<GEOM_FUNCIÓN>(mapping = aes(<MAPEOS>))



ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, color = clase))


ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, alpha = clase))


ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, shape = clase))
#sólo se tienen 6 formas


ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, shape = clase, color = clase , alpha = clase))


ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista), color = "blue")

#¿Por qué los puntos no son azules?
ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, color = "blue"))

#¿Por qué los puntos no son azules?
ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, color = "blue"))


##Errores comunes en ggplot
#ggplot(data = millas) 
#+ geom_point(mapping = aes(x = cilindrada, y = autopista, color = "blue")) ##Error el + deber?a de ir en la línea anterior




