### Datos de World Zika Data Team casos de zika en Guatemala 30 de marzo 2016
### Datos buscando por el Departamento de Epidemiología de Guatemala https://github.com/cdcepi/zika/

# Borre el global environment antes de emepezar

# Chequee donde está su directorio ahora (ejecute la linea 7)
getwd()

# Ponga el directorio suyo entre los parénthesis y ejecútelo 
# mi código: setwd("/Users/clairebradley/Desktop/TrifinioR/semana1")
setwd()

# Aprenda como funciona la orden "read.csv" (ejecute la linea 14)
?read.csv

# Cargue los datos y llamelos "zika" en un dataframe -- sustituir la ruta suya
zika <- read.csv("zika_guate_2016-03-30.csv") # Esta orden funciona porque en la linea 11
                                              # instruyó a R de buscar archivos en esa carpeta

# Vea los datos para entender la estructura
View(zika)

# Cuántas regiónes hay en este conjunto de datos? 
nrow(zika) # 25 - esta orden significa número de filas

# Cuántas columnas hay en este conjunto de datos? 
# (Use la orden ncol())
ncol(zika) #2

# Que tipo de datos son los dos variables en el dataframe Zika? 
class(zika) #dataframe
class(zika$lugar) #carácter
class(zika$numero_de_casos) #entero/número

class(zika[,1]) #carácter
class(zika[,2]) #entero/número

# Imprime la información en la fila 3, columna 2
zika[3,2] #34

# Cuántos casos tuvo Quetzaltenango en este dia (30/3/16)? 
# Una pista: Quetzaltenango está en la fila 17
zika[17,2] #262
# Otra opción un poco más complicada si no supo el número de fila:
zika$numero_de_casos[zika$lugar == "Quetzaltenango"] #262

# Cuántas régiones tuvieron menos de 10 casos en este dia? 
sum(zika$numero_de_casos < 10) #9

# Cuántas régiones tuvieron 4 casos en este dia? 
sum(zika$numero_de_casos == 4) #2
# Otra opción con la misma respuesta:
sum(zika[,"numero_de_casos"] == 4) #2

# Cuántos casos de Zika en total estuvieron contados en este dia?
sum(zika$numero_de_casos) #1096

# Que fue el promedio de casos en este dia? (Use la orden mean())
mean(zika$numero_de_casos) #43.84

# Que porcentaje de todos los casos fueron en Zacapa? (Zapaca está en la fila 25)
zika[25,2]/sum(zika$numero_de_casos) * 100 #13.78%
# Otra opción un poco más complicada si no supo el número de fila:
zika$numero_de_casos[zika$lugar == "Zacapa"]/sum(zika$numero_de_casos) * 100 #13.78%s

# Que porcentaje de lugares tuvieron más de 50 casos?
sum(zika$numero_de_casos > 50)/nrow(zika) * 100 #28%

# Cambie el nombre de columno 2 por algo más corto como "casos" (use la orden colnames())
colnames(zika)[2] <- "casos"

# Cree un nuevo dataframe y llámelo "zikaGrande" solo con las regiónes que tuvieron más de 30 casos
zikaGrande <- subset(zika, casos > 30) 

# Añada este nuevo vector/nueva columna al dataframe Zika con estas tres lineas de código:
zika$tipoPrueba <- NA # Cree nuevo vector/nueva columna que no contenga nada
zika$tipoPrueba[c(1:12)] <- "PCR"
zika$tipoPrueba[c(13:25)] <- "Anticuerpo"

# Cuántas regiónes que usaron pruebas "PCR" tuvieron menos o igual que 100 casos?
sum(zika$tipoPrueba == "PCR" & zika$casos <= 100) #12

#Otra opción
df <- subset(zika, tipoPrueba == "PCR")
sum(df$casos <= 100) #12

# Cuántas regiónes sin "Jalapa" y "Jutiapa" usaron pruebas "PCR" (Use != para excluir las dos regiónes y use &/|)
sum(zika$lugar != "Jalapa" & zika$lugar != "Jutiapa" & zika$tipoPrueba == "PCR") #10

# Hicimos editos en este conjunto de datos, lo sabremos en un nuevo conjunto de datos
write.csv(zika, "zika_con_pruebas_practica.csv")

