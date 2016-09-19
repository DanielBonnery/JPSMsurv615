data("rateofreturn")
anova(  lm(Rate~Sector,data=rateofreturn)  )
