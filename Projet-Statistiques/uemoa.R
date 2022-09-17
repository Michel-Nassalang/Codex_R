
uemoa <- 
  readXL("C:/Users/miken/Downloads/Mes cours/Projet-Statistiques/Uemoa_situation.xls",
   rownames=FALSE, header=TRUE, na="", sheet="UEMOA", stringsAsFactors=TRUE)
summary(uemoa)
library(abind, pos=17)
library(e1071, pos=18)
numSummary(uemoa[,c("M_years", "NO_Edu", "P_Edu", "P_S_Edu", "pop_total", 
  "Pop_urb", "S_Edu", "taux_scholar", "Work_15_64"), drop=FALSE], 
  statistics=c("mean", "sd", "IQR", "quantiles"), quantiles=c(0,.25,.5,.75,1))
cor(uemoa[,c("M_years","NO_Edu","P_Edu","P_S_Edu","pop_total","Pop_urb",
  "S_Edu","taux_scholar","Work_15_64")], use="complete")
model <- 
  lm(M_years~NO_Edu+P_Edu+P_S_Edu+pop_total+Pop_urb+S_Edu+taux_scholar+Work_15_64,
   data=uemoa)
summary(model)
flex1 <- 
  lm(M_years~NO_Edu+P_Edu+pop_total+taux_scholar+Work_15_64, 
  data=uemoa)
summary(flex1)
library(leaps, pos=19)
library(MASS, pos=20)
stepwise(flex1, direction='backward/forward', criterion='AIC')
flex2 <- lm(M_years~NO_Edu+P_Edu+pop_total+taux_scholar+Work_15_64, 
  data=uemoa)
summary(flex2)

