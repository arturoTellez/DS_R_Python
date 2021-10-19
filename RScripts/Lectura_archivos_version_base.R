## Exploración de datos:
rm(list = ls()) #eliminar variables, es decir
#iniciar una sesión vacía

getwd() #dónde esta nuestro interprete

setwd(".") #define la dirección de mi interprete

##Paquetes
library(datos)
library(xml2)
write.csv(datos::millas, "millas.csv")
write.xlsx(datos::millas, "millas.xlsx")


#Leer texto plano
df <- read.table("<FileName>.txt", 
                 header = TRUE,
                 sep="/", #cómo separar las columnas
                 strip.white = TRUE, #eliminar espacios en blanco
                 na.strings = "EMPTY") #como va encontar los espacios vacios

### Leer excel:
#install.packages("xlsx")# trabajar con excel
library(readxl)
read.xlsx("<name and extension of your file>", 
          sheetIndex = 1, 
          startRow=2, 
          colIndex = 2)



write.csv(Datos, file="Prueba1.csv")
#Elimino los numeros de fila

write.csv(Datos, file="Prueba2.csv", row.names = F)
#Para exportarlo a un archivo TXT

write.table(Datos, file="Prueba3.txt")

write.xlsx(x,
           file,
           sheetName = "Sheet1",
           col.names = TRUE,
           row.names = TRUE,
           append = FALSE,
           showNA = TRUE,
           password = NULL)