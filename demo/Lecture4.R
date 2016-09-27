data(forbes)
attach(forbes)
plot(log.pressure~boiling.point,main="Scatter Plot - Pressure (Y) and Temperature (X)",xlab="Boiling Point (F)",ylab="Log of pressure (log(Hg))")
lm1<-lm(log.pressure~boiling.point)
