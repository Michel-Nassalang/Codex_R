z=c(1,1,1,1,1,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,6,6,6,8,8)
length(z)
T4 = table(z)
T4c = c(T4)
T4c
data.frame(Eff = T4c, Effcum = cumsum(T4c),Freq = T4c/sum(T4c),FreqCum = cumsum(T4c/sum(T4c)))
plot(T4, type="h", xlab ="", ylab="", main="", frame=0, lwd=5)
plot(ecdf(z), xlab="Effectif", ylab="Frequence", main="Fréquences des effectifs", frame=0)

# Nouvelle table

T5=c(152,152,152,153,153,
     154,154,154,155,155,
     156,156,156,156,156,
     157,157,157,158,158,
     159,159,160,160,160,
     161,160,161,160,162,
     162,162,163,164,164,
     164,164,165,166,167,
     168,168,168,169,169,
     170,170,171,171,171)
length(T5)
T6 = table(cut(T5,breaks = c(151,155,159,163,167,171)))
T6c =c(T6)
data.frame(Eff=T6c , EffCum=cumsum(T6c) ,
           Freq=T6c/sum(T6c) , FreqCum=cumsum(T6c/sum(T6c)))
hist(T6, braeks = c(151.5,155.5,159.5,163.5,167.5,171.5), 
     freq=FALSE, xlab = "", ylab = "", main = "", xaxt="n",
     col = "blue")

