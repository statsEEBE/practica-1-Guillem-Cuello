#Problema 1
mis_dades <- mtcars

sort(mis_dades$qsec) #ordenats de major a menor

cut(mis_dades$qsec, breaks = 4) #partir en subintervals

qsec_intervalos =cut(mis_dades$qsec, breaks = 4)#definir

table(qsec_intervalos)#per contar cuants cops està per interval(observacions mes freqüents)

hist(mis_dades$qsec, breaks = 10) #grafic de barres per variables continues

#Mitjana de qsec
mis_dades$qsec
mean(mis_dades$qsec)    #resposta a)

#Mediana de drat
sort(mis_dades$drat)
median((mis_dades$drat))    #resposta b)

#Primer quartil del drat
quantile(mis_dades$drat,0.25)   #resposta c)


quantile(mis_dades$mpg,0.18) #Tallar al 18% #resposta d)

#Rang interquartílic?
IQR(mis_dades$cyl)     #resposta e)

#També es pot calcular com:
quantile(mis_dades$cyl, 0.75)-quantile(mis_dades$cyl,0.25)     #resposta e)

#Desviació típica (al voltant de la mitjana) de cyl?
sd(mis_dades$cyl)

#Variança (desviació típica al quadrat)
var(mis_dades$qsec)


#Problema 2

ls() #enllistar totes les variables que tenim ara mateix

rm(list=ls()) #borrem les dades antigues

mis_dades <- mtcars
data = mis_dades
hist(data$mpg)
pie(data$mpg)
pie(table(data$mpg))


#Problema 3

x<-c(-8,5,2,-8,9,5,2,-3,1,-1,4,-4,9,3,-9,7,0,-7,8,-4,1,7,-6,4,5,-9,-2,-8,-5,5)
sum(x)

y <- x[-c(2,21,26)]
sum(exp(x)) - sum(exp(y))

y[19] #mirem el valor de la posició 19
y[24] #mirem el valor de la posició 24
