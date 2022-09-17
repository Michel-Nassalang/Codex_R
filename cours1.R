X=c("M","M","M","C","C","C","C","D","C","C","M","C","M","V","M","V","D","C","C","M")
t1=table(X)
v1=c(t1)
data.frame(Eff=v1,Fref=v1/sum(v1))
#diagramme en secteur
pie(t1,radius=1.0)
m=max(v1)
barplot(t1,ylim=c(0,m+1))
t2=cumsum(t1)
m=20
barplot(t2,ylim=c(0,m+1))