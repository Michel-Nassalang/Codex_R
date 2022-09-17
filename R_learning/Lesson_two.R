1+4
a<-2+5
4+5->b
a
b
seq(1,25,4)
rep(2,5)
10:20
c(12,23,43,54,56,21)->vecteur
min(vecteur)
max(vecteur)
mean(vecteur)
sd(vecteur)
sum(vecteur)
length(vecteur)
summary(vecteur)
Data = data.frame(Taille=c(150,170,165,176,185,192,182),Poids=c(59,63,60,65,70,76,67),
                  Genre=c("F","M","F","M","M","F","M"),Age=c(19,21,18,22,23,34,40),
                  row.names = c("Esther","Edgar","Eugenie","Jules","Hervé","Anastasie","Gabriel"))
summary(Data)
Data$Taille
Data$Poids
Data$Genre
Data$Age
Data[Data$Taille>170,]
Data[Data$Poids>65,]
Data[Data$Genre=='F',]
Data[1,]
Data[,1]
# --------------------------------
titanic <- readXL("C:/Users/miken/Documents/Codex_Python/titanic.xls", 
                  rownames=FALSE, header=TRUE, na="", sheet="titanic3", stringsAsFactors=TRUE)
