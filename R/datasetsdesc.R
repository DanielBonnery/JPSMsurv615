#' Rate of return of share.
#'
#' A dataset containing the rate of return of share of different companies. The variables are as follows:
#'
#' \itemize{
#'   \item Sector. Sector ("Oil" or "Service")
#'   \item Rate. Rate of return
#'   ...
#' }
#'
#' @format A data frame with 18 rows and 2 variables
#' @source imaginary
"rateofreturn"
#> [1] "rateofreturn"

#' A dataset containing Measures of Productivity improvement for firms producing electronic computing equipment.
#'
#' A dataset containing the rate of return of share of different companies. The variables are as follows:
#'
#' \itemize{
#'   \item level. Level of theur average expenditures for researhc and development in the past three years ("Low","Moderate","High")
#'   \item improvement. Productivity improvement in a scale from 0 to 100.
#' }
#'
#' @format A data frame with 27 rows and 2 variables
#' @source Neter Kutner Nachtsheim and Wasserman, Applied Linear Statistical Models, fourth ed., p.703.
"productivity.improvement"
#> [1] "productivity.improvement"

#productivity.improvement<-data.frame(  level=as.factor(rep(c("Low","Moderate","High"),c(9,12,6))),  improvement=c(7.6,8.2,6.8,5.8,6.9,6.6,6.3,7.7,6.0,6.7,8.1,9.4,8.6,7.8,7.7,8.9,7.9,8.3,8.7,7.1,8.4,8.5,9.7,10.2,7.8,9.6,9.5));save(productivity.improvement,file="data/productivity.improvement.Rdata")



#' Forbes' data on boiling point and  barometric pressure.
#'
#' Forbes' data giving boiling point (F) and log of barometric pressure (log of inches of mercury) for 17 locations in the Alps and in Scotland. The variables are as follows:
#'
#' \itemize{
#'   \item boiling.point. Boiling point in F.
#'   \item log.pressure. Log of the pressure.
#' }
#'
#' @format A data frame with 17 rows and 2 variables
#' @source Applied Linear Regression by Sanford Weisberg
"forbes"


#' hrs_wealth' 
#'
#' hrs_wealth' 
#'
#' \itemize{
#'   \item hhidpn
#'   \item  h7atotw
#'   \item  h8atotw
#'   \item  h9atotw
#'   \item  s9edyrs
#'   \item  s9gender
#'   \item edu. (computed from s9gender)
#' }
#'
#' @format A data frame with 17 rows and 2 variables
#' @source Applied Linear Regression by Sanford Weisberg
"hrs_wealth"

if(FALSE){hrs_wealth<-read.csv("../../../Datasets/Lectures/hrs_wealth.txt",header = FALSE,sep=" ")
names(hrs_wealth)<-tolower(strsplit("HHIDPN H7ATOTW H8ATOTW H9ATOTW S9EDYRS S9GENDER",split=" ")[[1]])
hrs_wealth$edu<-cut(hrs_wealth$s9edyrs, c(0,11,12,16,Inf))
anova(lm(h9atotw~edu,data=hrs_wealth))
Y<-aggregate(hrs_wealth$h9atotw,mean,by=list(hrs_wealth$edu))
Y<-aggregate(hrs_wealth$h9atotw,sd,by=list(hrs_wealth$edu))
Y$x/sqrt(c(1978,3327,2209,2543))
save(hrs_wealth,"data/hrs_wealth.rdata")
}