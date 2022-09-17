
testify <- 
  readXL("C:/Users/miken/Downloads/Mes cours/Projet-Statistiques/test_project.xls",
   rownames=FALSE, header=TRUE, na="", sheet="Variables", 
  stringsAsFactors=TRUE)
summary(testify)
library(abind, pos=17)
library(e1071, pos=18)
numSummary(testify[,c("agro.eco", "Association", "Autre.source.de.revenu", 
  "Charge.moy.ha", "Couverture.alimentaire", "Formation", "Nombre.d.années", 
  "Rendement..Kg.ha.", "Revenu.moy.ha", "Superficie..ha."), drop=FALSE], 
  statistics=c("mean", "sd", "IQR", "quantiles"), quantiles=c(0,.25,.5,.75,1))
cor(testify[,c("agro.eco","Association","Autre.source.de.revenu",
  "Charge.moy.ha","Couverture.alimentaire","Formation","Nombre.d.années",
  "Rendement..Kg.ha.","Revenu.moy.ha","Superficie..ha.")], use="complete")
with(testify, cor.test(Charge.moy.ha, Revenu.moy.ha, 
  alternative="two.sided", method="pearson"))
RegModel.2 <- 
  lm(Charge.moy.ha~agro.eco+Association+Autre.source.de.revenu+Couverture.alimentaire+Formation+Nombre.d.années+Rendement..Kg.ha.+Revenu.moy.ha+Superficie..ha.,
   data=testify)
summary(RegModel.2)
RegModel.3 <- 
  lm(Revenu.moy.ha~agro.eco+Association+Autre.source.de.revenu+Charge.moy.ha+Couverture.alimentaire+Formation+Nombre.d.années+Rendement..Kg.ha.+Superficie..ha.,
   data=testify)
summary(RegModel.3)
RegModel.4 <- 
  lm(Revenu.moy.ha~agro.eco+Autre.source.de.revenu+Charge.moy.ha, 
  data=testify)
summary(RegModel.4)

