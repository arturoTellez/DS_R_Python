## Exploración de datos:
rm(list = ls()) #eliminar variables, es decir
#iniciar una sesión vacía

getwd() #dónde esta nuestro interprete

setwd(".") #define la dirección de mi interprete

##Paquetes
library(datos)
library(xml2)
library(readxl)
read_xlsx("./millas.xlsx")
listdir()

read_csv("La primera línea de metadata 
  La segunda línea de metadata
  x,y,z
  1,2,3", skip = 2)
#> # A tibble: 1 x 3
#>       x     y     z
#>   <dbl> <dbl> <dbl>
#> 1     1     2     3

read_csv("# Un comentario que quiero ignorar
  x,y,z
  1,2,3", comment = "#")
#> # A tibble: 1 x 3
#>       x     y     z
#>   <dbl> <dbl> <dbl>
#> 1     1     2     3


read_csv("1,2,3\n4,5,6", col_names = FALSE)
#> # A tibble: 2 x 3
#>      X1    X2    X3
#>   <dbl> <dbl> <dbl>
#> 1     1     2     3
#> 2     4     5     6


read_csv("1,2,3\n4,5,6", col_names = c("x", "y", "z"))
#> # A tibble: 2 x 3
#>       x     y     z
#>   <dbl> <dbl> <dbl>
#> 1     1     2     3
#> 2     4     5     6


read_csv("a,b,c\n1,2,.", na = ".")
#> # A tibble: 1 x 3
#>       a     b c    
#>   <dbl> <dbl> <lgl>
#> 1     1     2 NA
