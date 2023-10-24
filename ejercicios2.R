### Datos de World Zika Data Team casos de zika en Guatemala 30 de marzo 2016
### Datos buscando por el Departamento de Epidemiología de Guatemala https://github.com/cdcepi/zika/

# Borre el global environment antes de emepezar

# Chequee donde está su directorio ahora (ejecute la linea 7)
getwd()

# Ponga el directorio suyo entre los parénthesis y ejecútelo 
# mi código: setwd("/Users/clairebradley/Desktop/TrifinioR/semana1")
#1: busque el documento en su computadora
#2: click derecha, propiedades, copie la carpeta de archivos
#3: póngalo entre parenthses menos el título del CSV
setwd()

#1: Cargue los datos de antes en un dataframe -- que orden usamos?
zika2 <- _______("zika_con_pruebas_practica.csv") 

#2: Vea los datos con la orden View()


#3: Remueva la columna rara (columna 1) que apareció cuando guardamos el conjunto de datos
# Una pista: escriba el código para seleccionar la primera columna del dataframe y después ponga un símbolo de menos 
            # antes del número 1


#4: Imagine que encontramos un error con los números de antes, añada 10 casos por cada región
__________ <- __________ + 10


###### Oraciónes "ifelse()": 
#5: Calcule el percentil 90 de casos basado en la linea que escribí
quantile(zika2$casos, 0.1) #14


#6: Cree una nueva columna en "zika2" conteniendo nada (solo NA) y llámelo "hotspot"
zika2$hotspot <- NA

#7: Cree una oración ifelse categorizando los casos en grupo de hotspot con el código abajo
# (1 = más o igual que percentil 90) o no hotspot (2 = menos que percentil 90)
?ifelse
zika2$hotspot <- ifelse(zika2$casos >= 109.4, 1, 2)

#8: Que son las regiónes "hotspots" de zika?
zika2$lugar[________ == ___] 

#9: Cree un plot con los datos para visualizar con el código abajo
barplot(zika2$casos)
# el mismo gráfico con más detalles
barplot(zika2$casos, main = "Zika por Región", names.arg = zika2$lugar, las = 2) 

#10: Cree un plot parecido del último pero solo con datos de tipo de prueba "Anticuerpo" - use la orden subset()
  #a: Repase la estructura de la orden "subset()" 
?subset

  #b: Cree un nuevo dataframe que se llama "zika_ac"
  

  #c: Copie la estructura de #9 para visualizar los datos en un gráfico, cambie el título y el marbete de axis






