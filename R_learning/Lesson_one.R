1+5
#------------------------------
is.character(1.5)
is.numeric(1.5)
as.character(2.5)
#------------------------------
#vecteur
c(4,5,8,6)
A = c(9,5,12,6,23)
is.vector(A)
#matrice
matrix(1:12,nrow=4,ncol=3,byrow=FALSE)
B = matrix(1:12,nrow=4,ncol=3,byrow=TRUE)
B
is.matrix(B)
#Tableau
array(1:30, c(3,3))
C = array(1:30, c(3,3,3))
is.array(C)
#Dataframe
data.frame(Taille=c(150,170,165,176,185,192,182),Poids=c(59,63,60,65,70,76,67),
           Genre=c("F","M","F","M","M","F","M"),Age=c(19,21,18,22,23,34,40))
Data = data.frame(Taille=c(150,170,165,176,185,192,182),Poids=c(59,63,60,65,70,76,67),
                  Genre=c("F","M","F","M","M","F","M"),Age=c(19,21,18,22,23,34,40),
                  row.names = c("Esther","Edgar","Eugenie","Jules","Hervé","Anastasie","Gabriel"))
Data
is.data.frame(Data)
#liste
factor(c("F","M","F","M","M","F","M"))
