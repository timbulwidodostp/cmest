# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Causal Mediation Analysis Use cmest (CMAverse) With (In) R Software
install.packages("remotes")
remotes::install_github("BS1125/CMAverse")
library("CMAverse")
cmest = read.csv("https://raw.githubusercontent.com/timbulwidodostp/cmest/main/cmest/cmest.csv",sep = ";")
# Estimation Causal Mediation Analysis Use cmest (CMAverse) With (In) R Software
# single-mediator
cmest_1 <- cmest(data = cmest, model = "rb", outcome = "contY",  exposure = "A", mediator = "M2", basec = c("C1", "C2"), EMint = TRUE, 
mreg = list("multinomial"), yreg = "linear", astar = 0, a = 1, mval = list("M2_0"), estimation = "paramfunc", inference = "delta")
summary(cmest_1)
# multiple-mediator
cmest_2 <- cmest(data = cmest, model = "rb", outcome = "contY", exposure = "A", mediator = c("M1", "M2"), basec = c("C1", "C2"), EMint = TRUE, 
mreg = list("logistic", "multinomial"), yreg = "linear", astar = 0, a = 1, mval = list(0, "M2_0"), estimation = "imputation", inference = "bootstrap", 
nboot = 10,boot.ci.type = "bca")
summary(cmest_2)
# Causal Mediation Analysis Use cmest (CMAverse) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished