#### Calculadora simple
4-2
5*7

#### Calculadora con variables y la función suma
covid_sin_vaccunas <- c(300, 400, 500, 500)
covid_con_vaccunas <- c(100, 200, 200, 100)

covid_sin_vaccunas + covid_con_vaccunas
sum(covid_sin_vaccunas)
sum(covid_con_vaccunas)

#### No podemos combinar tipos de datos
covid_regiones <- c("Guatemala", "El Salvador", "Honduras", "Costa Rica")
covid_regiones + covid_sin_vaccunas

#### "<-" versus "="
gato <- "gato" # La cosa que está creyendo en la izquierda y los compuestos en la derecha
perro = "perro"

#### Comparaciones (<, >, ==)
5 > 4 
4 > 5
5 == 5
covid_sin_vaccunas == covid_con_vaccunas
covid_sin_vaccunas > covid_con_vaccunas

#### Vectores -- una columna o un tipo/grupo de datos
covid_con_vaccunas <- c(100, 200, 200, 100)
covid_regiones <- c("Guatemala", "El Salvador", "Honduras", "Costa Rica")

#### Dataframe -- multiples vectores, parece una tabla de Excel 
covid <- data.frame(covid_regiones,
                    covid_con_vaccunas, 
                       covid_sin_vaccunas)
names(covid) <- c("pais", "conV", "sinV")

#### Listas -- multiples dataframes

#### Trabajar con dataframes
covid
nrow(covid) # número de filas
ncol(covid) # número de columnos
dim(covid) # dimensiones

## Seleccionar - usamos corchetes([ ]) y sígnalo de dollar ($)
covid[1,3]
covid$sinV[1]

covid[ ,1]
covid$pais

covid$conV[1] == covid$conV[2] #Falso
sum(covid$conV == covid$sinV) #0
sum(covid$conV < covid$sinV) #4

sum(covid$conV) #600, suma 
range(covid$conV) #100-200, rango
max(covid$conV) #200, máximo
min(covid$conV) #100, mínimo
mean(covid$conV) #150, promedio

## Creyendo vectores con subset
mas100 <- subset(covid, conV > 100)
menos400 <- subset(covid, sinV <= 400)
guate <- subset(covid, pais == "Guatemala")

## Ordenar
creciente <- sort(covid$conV, decreasing = FALSE)
alfabética <- covid[order(covid$pais),] # no queremos que los columnos cambien

## Chequee los nombres de columnos (y también puede cambiarlos con este orden)
colnames(covid)

## Comparar
# & significa "y"
# | significa "o"
# == significa igual
# != significa no igual

## Ejemplos
sum(covid$conV >= 100 & covid$sinV <= 400) #2
sum(covid$conV != 100 | covid$sinV <= 400) #3







