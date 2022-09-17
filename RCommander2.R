data(Investment, package="sandwich")
Investment <- as.data.frame(Investment)

summary(Investment)
numSummary(Investment[,c("GNP", "Interest", "Investment", "Price", 
  "RealGNP", "RealInt", "RealInv"), drop=FALSE], statistics=c("mean", "sd", 
  "IQR", "quantiles"), quantiles=c(0,.25,.5,.75,1))
cor(Investment[,c("GNP","Interest","Investment","Price","RealGNP","RealInt",
  "RealInv")], use="complete")
Model.1 <- lm(GNP~Interest+Investment+Price+RealGNP+RealInt+RealInv, 
  data=Investment)
summary(RegModel.1)
Model.3 <- lm(GNP ~ Interest + Investment + Price + RealGNP + RealInt + 
  RealInv, data=Investment)
summary(Model.3)

