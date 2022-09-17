E = c(0,0,1,1,1,2,3,4)
n=length(E)
n
xb=mean(E)
xb
#mediane
median(E)
#Taille des individus dans la classe
taille=c(160,170,182,159,170,175,178,150,180,180,179,160)
summary(taille) # description globales sur les donn??es re??ues
taille1 = table(taille)
taille2 = c(taille1)
taille2
genre = c(1,1,1,0,1,1,0,1,1,0,0,0)
summary(genre)
G = table(genre)
G2 = c(G)
G2
cov(taille, genre)
cov(genre, taille)
#coefficient de corr??lation
#installer Rcmdr
#El Hadji Deme  Research gates Zéros inflations models