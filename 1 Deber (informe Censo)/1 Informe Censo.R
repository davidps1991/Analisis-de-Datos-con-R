#MAPA DE ECUADOR
library(maps)
world_map<-map_data("world")
sort(unique(world_map$region))

map("world", "Ecuador")
map.cities(country = "Ecuador", capitals = 1)

#*****************************************************************

#Lectura de Archivos
library(foreign)
poblacion<-read.spss("SPSS_Imbabura_Poblacion.sav",to.data.frame=T)
str(poblacion)
View(poblacion)


POBL<-read.spss("SPSS_Imbabura_Poblacion.sav")
attr(POBL,"names")


#*************************************************************************



#SEXO
Sexo<-table(poblacion$P01)
Sexo
pie(Sexo,main="Sexo")
barplot(Sexo)

#Edades
e1<-sum(poblacion[,"P03"]>=90)
e2<-sum(poblacion[,"P03"]<90&poblacion[,"P03"]>=60)
e3<-sum(poblacion[,"P03"]<60&poblacion[,"P03"]>=40)
e4<-sum(poblacion[,"P03"]>=18&poblacion[,"P03"]<40)
e5<-sum(poblacion[,"P03"]<18)
E<-c(e1,e2,e3,e4,e5)
names(E)<-c("Mayor 90","Entre 90 y 60","40 y 60","Entre 18 y 40","Menor18")
pie(E)
barplot(E)

#AREA RUARAL O URBANA
Area<-table(poblacion$URP)
Area
pie(Area,main="Area Rural o Urbana")
barplot(Area)


#Tiene SEGURO PRIVADO
Segurop<-table(poblacion$P07)
Segurop
pie(Segurop,main="Posee Seguro Privado")

#DISCAPACIDAD PERMANENTE
discapa<-table(poblacion$P08)
discapa
pie(discapa,main="Tiene una discapacidad Permanente")

#provincia de nacimiento
provincia_nace<-table(poblacion$P11P)
provincia_nace
pie(provincia_nace,main="Provincia de nacimiento")

#Etnia
Etnia<-table(poblacion$P16)
Etnia
pie(Etnia;main="Etnia")

#Sabe leer y escribir
leer<-table(poblacion$P19)
leer
pie(leer,main="Sabe leer y escribir")

#Nivel  Educativo
Educacion<-table(poblacion$P23)
Educacion
pie(Educacion,main="Nivel de Educación")

#Estado Civil
Estado_civil<-table(poblacion$P34)
Estado_civil
pie(Estado_civil,main="Estado Civil")

#Tipo de Actividad
Actividad<-table(poblacion$TIPOACT)
Actividad
pie(Actividad,main="Actividad")

#Relacion Con el Jefe de HOgar
hogar<-table(poblacion$P02)
hogar
pie(hogar,main="Parentezco con el jefe de Hogar")


