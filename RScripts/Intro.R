###Tutorial basado de la página de https://sites.google.com/site/arturoerdely/introduction-to-r/1-data-handling-with-r?authuser=0

### Para que logres crecer en la programación en R

help(solve) # Conoce acerca de la función "solve"

help("[[") # Conoce la selección de elementos en listas

?solve # Otra forma de pedir ayuda

help.start() # Inicia la ayuda


### Calculadora, operaciones usuales:

#   + - * / ^  %/%  %%

9/3 # División

9^3 # Potencia

9*3 # Multiplicación

9+3 # Suma

9%/%3 # División Entera

9%%3 # Módulo


### Funciones usuales:

# log exp sqrt abs sin cos tan asin acos atan

# factorial choose(n,x)  gamma  lgamma

# floor ceiling trunc round

floor(3.8) # 3

ceiling(3.1) # 4

trunc(3.8) # 3

pi #  3.141593

round(pi,0)  # 3

round(pi,2) # 3.14


# NaN  0/0   Inf  -Inf  1/0

2/0 #Inf

-3/0 # Inf

0/0 # NaN

2/Inf # 0

2*Inf #Inf

3-Inf #-Inf



### Operaciones lógicas

# T o TRUE, F o FALSE

# <  <=  >  >=  ==  !=

# ! & | xor

# is.finite  is.infinite  is.nan

4 < 4

4 <= 4

4 == 3

4 != 3

T

F

!T

!F

T&T

T&F

F&F

T*T

T*F

F*F

T|T

T|F

F|F

xor(T,T)

xor(T,F)

xor(F,F)

is.finite(10)

is.infinite(10)

is.nan(10)

is.finite(Inf)

is.infinite(Inf)

is.nan(Inf)

is.finite(NaN)

is.infinite(NaN)

is.nan(NaN)

### 1.2 VARIABLES Y VECTORES
# Crear vectores ("c")

a <- 3

A <- -4

b <- 2*A

a

a+A

b

ls()

X <- c(12, 13, 14)
X1 <- c(14, 15, 16, 14)
X + X1 #Cuidado!!, aunque los vectores tiene diferente longitud, si se suman, y sólo te da un warning 

### Limpiar variables
rm("b")

ls()

rm(list=ls())

ls()

# Hacer que mis variables persistan
# Archivo > Guardar área de trabajo... Sesión1.RData, o bien

# save.image("C:\\directorio\\Sesión1.RData")

q()   #  ¿Guardar imagen de área de trabajo? NO (ya lo hicimos)


# Doble click en Sesión1.RData: inicia R y carga archivo, o bien

# Iniciar R y luego: Archivo > Cargar área de trabajo... Sesión1.RData, o bien

# load("C:\\directorio\\Sesión1.RData")

ls()

### vectores

w <- vector(mode="numeric",length=80)

w

w[3] <- 5

w[9] <- Inf

w

w[3]

w[9]


w <- vector(mode="logical",length=7)

w

w[2] <- T

w

w[3] <- 5

w


# scan

y <- scan() # Captura los datos ingresados en consola

print(y) # Mostrar los datos


# c  (concatenate, combine)

y <- c(0.3,-9,1)

y

y <- c(y,4)

y

y <- c(5,y)

y

z <- vector(mode="numeric",length=0)

z

z <- c(z,3)

z

z <- c(z,3)

z

c(z,z)



### Funciones usuales:

# log exp sqrt abs sin cos tan asin acos atan

# gamma  lgamma floor ceiling trunc round

x <- c(-3.2,0,2.9,Inf,NaN)

x

exp(x)

log(x)

floor(x)

ceiling(x)



### Funciones vectoriales:

# min max range length sum prod

# cumsum cumprod cummax cummin pmax pmin

# sort rank order rev

# mean median var sd

x <- c(5,-1,2,-4,-99,66)

min(x)

max(x)

range(x)

length(x)

sum(x)

prod(x)

cumsum(x)

cumprod(x)

cummax(x)

cummin(x)

y <- c(-3,2,4,10,-5,30)

x

y

pmax(x,y)

pmin(x,y)

### Ordenamientos
x

sort(x)

rank(x)

order(x)

x[order(x)]  # mismo resultado que sort(x)

rev(x)

rev(sort(x))

### Funciones estadísticas
x

median(x)

sum(x)/length(x)

mean(x)

var(x)

sqrt(var(x))

sd(x)

### Sucesiones

#  m:n  seq  rep

2:11

14:5

seq( from = -1 , to = 2 , by = 0.2)

seq( from = 2 , to = 3 , length = 11)

rep( 3 , 10 )

# Extrayendo subvectores:

# x[n] x[-n] x[m:n] x[-(m:n)] x[y]

x <- seq( from = 2 , to = 3 , length = 11) 
x # 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0

x[2] # 2.1

x[-2] # 2.0 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0

x[3:5] # del índice 3 al 5, los índices en R inician en 1, y si considera el límite superior

x[-(3:5)] # Todos los índices menos 3, 4 y 5

y <- c(1,3,11)

x[y]

x[-y]



### Operaciones usuales con vectores:

#   + - * / ^  %/%  %%

x <- 1:10 #Existen jerarquías en la operación
x+1

x*10

1/x

x^2

x%/%3

x%%3

# < 030 >

y <- 100:109

x

y

x+y

x-y

x*y

y/x

y^x

# < 031 >

y <- c(2,4,7)

x+y

# < 032 >

x

cumsum(x)/(1:length(x))

mean(x)

# < 033 >

# Operaciones lógicas con vectores:

# is.na match which which.min which.max all any unique duplicated

x <- 1:10

x

x > 3

1*(x>3)

x[(x>3)&(x<8)]

# < 034 >

z <- c(-1,NA,4,3,1,NA,0,Inf,NaN)

z

is.na(z)

z[is.na(z)] <- 100

z

# < 035 >

x <- c(4,rep(3,2),rep(5,3),10,5)

x

match(5,x)

match(10,x)

match(1,x)

# < 036 >

x

which(x==5)

which(x==1)

which(x>4)

x[which(x>4)]

x[x>4]

x

which.min(x)

x[which.min(x)]

min(x)

which.max(x)

x[which.max(x)]

max(x)


x

all(x>2)

all(x>3)

any(x>3)

any(x>10)

x

unique(x)

duplicated(x)

# < 039 >

# 1.3 MATRICES Y DATAFRAMES

# matrix cbind rbind colnames rownames array

matriz <- matrix(nrow=3,ncol=4)

matriz

matriz[2,3] <- 4.9

matriz

matriz[,4] <- c(2,5,7)

matriz

matriz[3,] <- rep(1,4)

matriz

matriz <- matrix(1:12,nrow=3,ncol=4)

matriz

matriz <- matrix(1:12,nrow=3,ncol=4,byrow=T)

matriz

matriz[,2]

matriz[3,]

matriz[2:3,3:4]

matriz[c(1,3),c(1,2,4)]

matriz

matriz2 <- rbind(matriz,matriz)

matriz2

matriz3 <- cbind(matriz,matriz)

matriz3


x <- 1:10

y <- 11:20

matriz4 <- rbind(x,y)

matriz4

matriz5 <- cbind(x,y)

matriz5

colnames(matriz5) <- c("Columna 1","Columna 2")

matriz5

rownames(matriz5) <- paste("Fila",1:10)

matriz5


cubo <- array(1:24,dim=c(4,3,2))

cubo

cubo[3,1,2]

matriz4D <- array(1:72,dim=c(4,3,2,3))

matriz4D


# Funciones usuales:

# log exp sqrt abs sin cos tan asin acos atan

# gamma  lgamma floor ceiling trunc round

matriz

log(matriz)

sqrt(matriz)

# < 044 >

# Operaciones usuales con matrices

# + t * %*% dim det solve eigen diag diag(diag(...)) outer

matriz

10+matriz

2*matriz

matriz+matriz

c(10,100,1000)+matriz

c(10,100,1000,10000)+matriz

# < 045 >

matriz

t(matriz)

matriz*matriz

matriz^2

matriz%*%matriz   # Error

matriz%*%t(matriz)

t(matriz)%*%matriz

t(matriz)*matriz  # Error

# < 046 >

dim(matriz)

dim(cubo)

dim(matriz4D)

# < 047 >

matrizC <- matrix(c(2,9,1,0,4,8,2,5,4,1,6,8),nrow=3,ncol=3)

matrizC

det(matrizC)

solve(matrizC)

matrizC%*%solve(matrizC)

round(matrizC%*%solve(matrizC),5)

# < 048 >

matrizC2 <- matrix(c(1,-1,0,-1,2,-1,0,-1,1),nrow=3,ncol=3)

matrizC2

det(matrizC2)

solve(matrizC2)

propios <- eigen(matrizC2)

propios

propios$values

propios$vectors

diag(matrizC2)

diag(diag(matrizC2))

# Verificando diagonalización:

det(propios$vectors)

round(propios$vectors%*%(diag(propios$values)%*%solve(propios$vectors)),5)

matrizC2

# < 049 >

# outer

x <- 1:4

y <- 10*(1:5)

x

y

mat1 <- outer(x,y,"+")

mat1

colnames(mat1) <- y

rownames(mat1) <- x

mat1

mat2 <- outer(y,x,"/")

colnames(mat2) <- x

rownames(mat2) <- y

mat2

# < 050 >

# Ordenando filas de matrices de acuerdo a una columna

(matriz <- matrix(runif(15),ncol=3))

matriz <- matrix(runif(15),ncol=3)

matriz

matriz[order(matriz[,1]),]

matriz[order(matriz[,2]),]

matriz[order(matriz[,3]),]

# < 051 >

(matriz <- matrix(c(3,2,1,1,2,17,16,18,17,16,200,150,150,120,100),ncol=3))

matriz[order(matriz[,1]),]

matriz[order(matriz[,1],matriz[,2]),]

order(matriz[,1])

order(matriz[,1],matriz[,2])

# < 052 >

# Importar una matriz de Excel

# 1) Crear un directorio para guardar info, digamos C:\CSV

# 2) Convertir datos hoja Excel -> formato CSV (sin nombre de columnas)

# 3) Desde R utilizar la función scan

# Ejemplo:

#Escribir en Excel la siguiente matriz de datos

# 1  2

# 3  4

# 5  6

# y guardar la hoja con formato CSV (comma separated values) en C:\CSV

# con el nombre Hoja1.CSV

# < 053 >

# Desde R leer y guardar los datos en una matriz:

matriz <- matrix(scan("c:\\CSV\\Hoja1.csv",sep=","),nrow=3,ncol=2,byrow=T)

matriz

# < 054 >

# Exportar matriz a Excel:

write(t(matriz),"c:\\CSV\\Hoja2.csv",ncolumns=2,sep=",")

# Desde Excel abrir Hoja2.csv, para verificar.

# < 055 >

# Para una interacción más sofisticada entre R y Excel se requiere:

# 1) Aprender un nuevo editor de R llamado "R Commander":

#    http://www.rcommander.com/

#    http://cran.r-project.org/web/packages/Rcmdr/index.html

#

# 2) Aprender el add-in RExcel mediante:

#    http://www.statconn.com/

#    http://cran.r-project.org/web/packages/RExcelInstaller/index.html

#    Libro: R Through Excel (2009) de Richard M. Heiberger y Erich Neuwirth,

#               Ed. Springer.

# < 056 >

# Los DATAFRAMES son objetos en R con filas y columnas, que a diferencia de las

# matrices, permiten tener distintos tipos de datos por columna.

# Convierta a CSV el archivo califs.xls que se anexa la final de esta página, y sálvelo

# como C:/CSV/califs.csv

# < 057 >

califs <- read.table("C:\\CSV\\califs.csv",header=T,sep=",")

califs

dim(califs)

califs[3,2]

califs[6,]

califs[,3]

mode(califs)

class(califs)

# < 058 >

# En contraste con una matriz:

matriz <- matrix(1:24,nrow=6,ncol=4)

dim(matriz)

mode(matriz)

class(matriz)

# < 059 >

# misma que podemos convertir a data frame:

matriz.df <- as.data.frame(matriz)

matriz.df

mode(matriz.df)

class(matriz.df)

# < 060 >

# Nótese que al no haber tenido etiquetas para columnas, R asignó:

names(matriz.df)

# y podemos modificar los nombres:

names(matriz.df) <- paste("Columna",1:4)

matriz.df

# < 061 >

# Crear data frames desde R

paciente <- c("Fulano","Sutano","Mengano")

peso <- c(83.7,72.1,98.5)

casado <- c(T,T,F)

(ejemplo.df <- data.frame(paciente,peso,casado))

# nótese que R cambió los valores lógicos a su nombre completo

# < 062 >

sum(ejemplo.df[,3])

sum(ejemplo.df[,2])

sum(ejemplo.df[,"peso"])

names(ejemplo.df)

colnames(ejemplo.df)

rownames(ejemplo.df)

# < 063 >

califs

Alumno # genera un error

attach(califs) # para que R reconozca las variables-columna del data frame

Alumno

Promedio

Regular

Extraordinarios

# < 064 >

# Resumen del data frame

summary(califs)

summary(ejemplo.df)

# < 065 >

califs

by(califs,Regular,mean)

by(califs,Extraordinarios,mean)

# < 066 >

# Ordenando dataframes

califs

califs[order(Promedio),]

# nótese que en la primera columna se conserva el orden original

califs[order(Extraordinarios),]

# y que en el caso de empates el segundo criterio es el orden original

califs[rev(order(Extraordinarios)),] # el segundo criterio es el orden original inverso

califs[order(Alumno),]

califs[order(Regular),]

# < 067 >

califs

califs[order(Regular,Extraordinarios),]

# en el caso de empates el tercer criterio es el orden original

# < 068 >

# Seleccionar filas que cumplan cierto criterio

califs[Regular == "Si",]

califs[Promedio > 9,]

# < 069 >

# 1.4 LISTAS

# Vector de objetos de distinta naturaleza (modo y atributo)

lista <- list(2+3i,c(3,5,7),c("Pumas","campeón"),matrix(1:6,ncol=2,nrow=3), T)

lista

lista[3]

lista[3][2]

lista[[3]]

lista[[3]][2]

lista[[4]][3,2]

# < 070 >

lista <- list(complejo=2+3i,vec=c(3,5,7),fut=c("Pumas","campeón"),mat=matrix(1:6,ncol=2,nrow=3),logica=T)

lista$fut

lista$mat

lista$mat[3,2]

# < 071 >

mode(lista)

class(lista)

attributes(lista)

attributes(lista$complejo)

attributes(lista$vec)

attributes(lista$fut)

attributes(lista$mat)

attributes(lista$logica)

# < 072 >

matrizC2 <- matrix(c(1,-1,0,-1,2,-1,0,-1,1),nrow=3,ncol=3)

propios <- eigen(matrizC2)

propios

propios$values

propios$vectors

mode(propios)

class(propios)

attributes(propios)

mode(eigen)

class(eigen)

attributes(eigen)

# < 073 >

# Combinando listas

lista2 <- c(lista,propios)

lista2

# < 074 >

# Lista de listas

superlista <- list(lista1=lista,lista2=propios)

superlista

superlista$lista2$vectors

attributes(superlista)

attributes(superlista$lista1)





