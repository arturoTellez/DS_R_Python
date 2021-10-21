
rm(list = ls())

#importar paquetes
library(datasets)
library(readr) # https://readr.tidyverse.org/reference/write_delim.html
library(openxlsx) # Escribir excel

write.xlsx(datasets::Titanic, "data.xlsx")


#Limpieza de nuestra sesión

#Ver datasets
class(datasets::Titanic)


