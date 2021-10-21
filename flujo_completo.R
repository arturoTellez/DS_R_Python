## limpiar sesión
rm(list = ls())

## buscar que nuestro ejercicio sea replicable
print(rnorm(10))
print(rnorm(10))

## definir una semilla
set.seed(100)
print(rnorm(10))
set.seed(100)
print(rnorm(10))

#Instalar dependencias
# install.packages("datos")
# install.packages("AmesHousing")
# install.packages("tidymodels")
# install.packages("readr")
# install.packages("GGally")
library(datos)
library(readr)
library(GGally)

library(ggplot2)

##Opciones de tablas
df <- datasets::iris # usando datasets o data
df <- read_csv("https://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data")
# usando uci https://archive.ics.uci.edu/ml/datasets.php

## cómo corrijo los names de la carga de datos en uci
head(df)

# respuesta
df <- read_csv("https://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", col_names =FALSE)
head(df)
names <- c(
  'class',
  'alcohol',
  'malic_acid',
  'ash',
  'alcalinity_of_ash',
  'magnesium',
  'total_phenols',
  'flavanoids',
  'nonflavanoid_phenols',
  'proanthocyanins',
  'color_intensity',
  'hue',
  'od280od315_of_diluted_wines',
  'proline')
names(df) <- names
head(df)
#Class
# 1) Alcohol
# 2) Malic acid
# 3) Ash
# 4) Alcalinity of ash  
# 5) Magnesium
# 6) Total phenols
# 7) Flavanoids
# 8) Nonflavanoid phenols
# 9) Proanthocyanins
# 10)Color intensity
# 11)Hue
# 12)OD280/OD315 of diluted wines
# 13)Proline   

## ¿Recuerdas cómo le puedes pasar a read_csv los nombres de las columnas?
## Ver dimensiones de df
dim(df)

## ver que tipo de objeto es df
class(df)
## En caso de tu objeto contenga una matriz o data.frame puedes usar:
#data<- as_tibble(df)
data <- df


## ver clase de data
class(data)

## Metadatos de mis datos
glimpse(data)


## Ver proporción por clase de vino
p<-ggplot(data=data) +
  geom_bar(aes(x=class))#, y=len), stat="identity")
p

## que pasa si nuestros datos ya tiene la transformación de conteo por clase
df_conteo <- data %>%
  group_by(class) %>% 
  summarize(
    conteo = n()
  )
df_conteo

## crear una nueva columna
df_conteo <- data %>%
  group_by(class) %>% 
  summarize(
    conteo = n()
  ) %>%
  mutate(freq = conteo/sum(conteo))
df_conteo

p <- ggplot(df_conteo) %>%
  geom_bar(mapping = aes(x = "class", y = "freq"), stat = "identity")
## por qué da error




p <- ggplot(df_conteo) +
  geom_bar(mapping = aes(x = class, y = freq), stat = "identity")

p

# gráfica horizontal
p + coord_flip()


# Modificar valores para simular valores ausentes
dim(data) #filas, columnas
nrow(data) #filas
ncol(data) #columnas

df[sample(nrow(data), 5), sample(ncol(data), 2)]
# Algunos datos se modifican para insertar NA
df[sample(nrow(data), 5), sample(ncol(data), 2)] <- NA



## Encontrar valores ausentes
apply(is.na(data), 2, sum)

## ¿Por qué no hay valores faltantes?


data[sample(nrow(data), 5), sample(ncol(data), 2)] <- NA
apply(is.na(data), 2, sum)

## apply aplica alguna función, en el ejemplo anterior sum,
#apply(is.na(data), 2, sum) por columnas
#apply(is.na(data), 1, sum) por renglones
#apply(is.na(data), c(1, 2), sum) por celda

## Reemplazar valores ausentes, no recomendado
for(columna in names(data)){
  print(columna)
  data <- data %>% 
    mutate(!!columna := replace_na(get(columna), mean(get(columna), na.rm = T)))
}


apply(is.na(data), 2, sum)


GGally::ggpairs(data) ## Son muchos datos

matriz_cor <- cor(data)
cor(data)[,"class"]

## hacerla bar
as_tibble(cor(data)) %>% 
  # Transformar datos
  mutate(variable = names(.)) %>%
  mutate(correlacion_abs = abs(class)) %>%
  mutate(variable = factor(.$variable, levels = rev(.$variable[order(.$correlacion_abs)]))) %>%
  mutate(variable = factor(.$variable, levels = .$variable[order(.$correlacion_abs)])) %>%
  ggplot() +
  geom_bar(mapping = aes(y = correlacion_abs, x = variable) , stat = "identity") + 
  coord_flip()

### Crear un scatter plot por cada par de columnas

### Modelado
library(tidymodels)
show_engines("decision_tree")
#> # A tibble: 5 × 2
#>   engine mode          
#>   <chr>  <chr>         
#> 1 rpart  classification
#> 2 rpart  regression    
#> 3 C5.0   classification
#> 4 spark  classification
#> 5 spark  regression    

tree_spec <- decision_tree() %>%
  set_engine("rpart")

class_tree_spec <- tree_spec %>%
  set_mode("classification")

data$class = factor(data$class)
class_tree_fit <- class_tree_spec %>%
  fit(class ~ ., data = data)


class_tree_fit

install.packages("rpart.plot")
library(rpart.plot)

class_tree_fit %>%
  extract_fit_engine() %>%
  rpart.plot()

augment(class_tree_fit, new_data = data) %>%
  accuracy(truth = class, estimate = .pred_class)


augment(class_tree_fit, new_data = data) %>%
  conf_mat(truth = class, estimate = .pred_class)




