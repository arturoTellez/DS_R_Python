### Ciclos:
#for
for(i in 1:10){
  print(i)
}

for(i in x){
  print(i)
}

for(i in x){
  print(x[i])
}

x[1:100] ##Completa con NA
x[1:2] # si incluye el límite superior

#while
i <- 1  
while(TRUE){
  if( i <= 10){
    print(i)
  }else{
    break
  }
  i <- i + 1
}

i <- 1
while(i <= 10){
  print(i)
  i <- i + 1
}

#repeat
i <- 1
repeat({
  if( i <= 10){
    print(i)
  }else{
    break
  }
  i <- i + 1
})  

repeat({
  print(1)
  break
})

## if, else if, else
#7 a 18 trabajo
#18 a 19 ejercicio
#19 a 21 libre
#21 a 7 dormir

hora_actual <- 5

if((hora_actual>=7) & (hora_actual<=18) ){
  print("trabajando")
}else if((hora_actual>18) & (hora_actual<=19)){
  print("ejercicio")
}else if((hora_actual>19) & (hora_actual<=21)){
  print("libre")
}else{
  print("durmiento")
}

if((hora_actual>=7) & (hora_actual<=18) ){
  print("trabajando")
}else if((hora_actual>18) & (hora_actual<=19)){
  print("ejercicio")
}else if((hora_actual>19) & (hora_actual<=21)){
  print("libre")
}else if((hora_actual>21) | (hora_actual<7)){
  print("durmiento")
}


dar_actividad <- function(hora_actual){
  if((hora_actual>=7) & (hora_actual<=18) ){
    print("trabajando")
  }else if((hora_actual>18) & (hora_actual<=19)){
    print("ejercicio")
  }else if((hora_actual>19) & (hora_actual<=21)){
    print("libre")
  }else if((hora_actual>21) | (hora_actual<7)){
    print("durmiento")
  }
}

dar_actividad(5)
dar_actividad(8)
dar_actividad(18.5)
dar_actividad(19.5)
dar_actividad(22)
