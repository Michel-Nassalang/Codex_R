
Model_1 <- lm(GNP~Interest+Investment+Price+RealGNP+RealInt+RealInv, 
  data=Investment)
summary(Model_1)
summary(Investment)
numSummary(Investment[,c("GNP", "Interest", "Investment", "Price", 
  "RealGNP", "RealInt", "RealInv"), drop=FALSE], statistics=c("mean", "sd", 
  "IQR", "quantiles"), quantiles=c(0,.25,.5,.75,1))
cor(Investment[,c("GNP","Interest","Investment","Price","RealGNP","RealInt",
  "RealInv")], use="complete")
Model.2 <- lm(GNP ~ Interest + Investment + Price + RealGNP + RealInt + 
  RealInv, data=Investment)
summary(Model.2)
RegModel.3 <- lm(GNP~Investment+Price+RealGNP+RealInt, data=Investment)
summary(RegModel.3)
Model.4 <- lm(GNP~Investment+Price+RealInt, data=Investment)
summary(Model.4)
LinearModel.5 <- lm(GNP ~ Investment + Price + RealInt, data=Investment)
summary(LinearModel.5)
AIC(LinearModel.5)
BIC(LinearModel.5)

