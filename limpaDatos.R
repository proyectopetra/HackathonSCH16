## install.packages("plyr")

# Lectura del fichero de pasos
pasos <- read.csv("https://raw.githubusercontent.com/proyectopetra/Dataset2016/master/pasos.csv")

# Agrupamiento de filas por el ID del dispositivo
#### Extracción de los ID de los usuarios
idx<-pasos$hex.idDispositivo.
df<-pasos[pasos$hex.idDispositivo.==idx, ]
agrupados <- subset(df, pasos$hex.idDispositivo. ==idx)

# Eliminar con frecuencia menor que 2
library(plyr)
count <- count(agrupados$hex.idDispositivo.)
freq <- count[count$freq>1,]
more_than_one <- agrupados[agrupados$hex.idDispositivo. %in% freq$x,]
