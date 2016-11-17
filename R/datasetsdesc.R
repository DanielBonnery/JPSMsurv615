if(FALSE){
  setwd(file.path(Mydirectories::box.directory(),"Teaching/LecturesJPSM/Surv_615_Regression_and_analysis_of_variance/Handouts_Exams_HW/data_package/JPSMSurv615/"))
  }
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
#' @source 
# imaginary
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
#' @source 1
# Neter Kutner Nachtsheim and Wasserman, Applied Linear Statistical Models, fourth ed., p.703.
"productivity.improvement"
#> [1] "productivity.improvement"

if(FALSE){
  productivity.improvement<-data.frame(  level=ordered(rep(c("Low","Moderate","High"),c(9,12,6)),levels=c("Low","Moderate","High")),  
                                         improvement=c(7.6,8.2,6.8,5.8,6.9,6.6,6.3,7.7,6.0,6.7,8.1,9.4,8.6,7.8,7.7,8.9,7.9,8.3,8.7,7.1,8.4,8.5,9.7,10.2,7.8,9.6,9.5));
  save(productivity.improvement,file="data/productivity.improvement.Rdata")
  }



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
#' @source 1
# Applied Linear Regression by Sanford Weisberg
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
#' @source 1
# Applied Linear Regression by Sanford Weisberg
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



#' cash.offers' data on cash offers for cars.
#'
#' cash.offers' data giving cash offer for a car and age. A consumer organization sutdied the effect of age of automobile owner on size of cash for a used car by utilizing 12 persons in each of three age groups  (young, middle, elderly) who acted as the owner of a used car. A medium price, six-year-old car was selected for the experiment, an the ownsers solicited cash offers for this car from 36 dealers selected at random from the dealers in the region. Randomization was used in assigning the dealers to the woners. 
                                                                                                                                                                                                                                                                  
#'
#' \itemize{
#'   \item age.group. Age group of the owner, factor variable. level: Young, Middle, Elderly
#'   \item dealer. 
#'   \item cash.offer. Cash offer for the car in hundreds of dollars.
#' }
#'
#' @format A data frame with 36 rows and 3 variables
#' @source 1
# Applied Linear Regression by Sanford Weisberg. Exercise 16.13
"cash.offers"

if(FALSE){
  cash.offers<-data.frame(dealer=rep(1:12,3),age.group=rep(ordered(c("Young","Middle","Elderly"),levels=c("Young","Middle","Elderly")),each=12),
                          cash.offer=c(23,25,21,22,21,22,20,23,19,22,19,21,
                            28,27,27,29,26,29,27,30,28,27,26,29,
                            23,20,25,21,22,23,21,20,19,20,22,21))
  setwd(file.path(Mydirectories::box.directory(),"Teaching/LecturesJPSM/Surv_615_Regression_and_analysis_of_variance/Handouts_Exams_HW/data_package/JPSMSurv615/"))
  save(cash.offers,file="data/cash.offers.rdata")
}


#' mileage' data from a mileage study on the relation between speed and gas consumption.
#'
#' mileage' data from a mileage study on the relation between speed and gas consumption.The effectiveness of a new experimental overdrive gear in reducing gasoline consumption was studied in 12 trials with a light truck equipped with this gear. In the data that follow,  constant speed (in miles per hour) and  miles per gallon were reported.
#'
#' \itemize{
#'   \item speed. Constant speed (in miles per hour)
#'   \item consumption. Consumption (in miles per gallon)
#' }
#'
#' @format A data frame with 24 rows and 2 variables
#' @source 1
# Applied Linear Regression by Sanford Weisberg. Exercise 7.31
"mileage"

if(FALSE){
  mileage<-data.frame(speed=rep(seq(35,60,by=5),each=2), consumption=c(22,20,28,31,37,38,41,39,34,37,27,30))
  setwd(file.path(Mydirectories::box.directory(),"Teaching/LecturesJPSM/Surv_615_Regression_and_analysis_of_variance/Handouts_Exams_HW/data_package/JPSMSurv615/"))
  save(mileage,file="data/mileage.rdata")
}


#' airfreight.breakage' data from of number of breakage versus number of transfers
#'
#' airfreight.breakage' A substance used in biological and medical research is shipped by aurfreight to users in cartons of 1000 ampules. The data belowm involving 10 shipments were collected on the number of times the carton was transferred from one aircraft to another over the shipment route (transfers) and the number of ampules found to be vroken upon arrival (broken.ampules)
#'
#' \itemize{
#'   \item transfers. Constant speed (in miles per hour)
#'   \item broken.ampules. Consumption (in miles per gallon)
#' }
#'
#' @format A data frame with 10 rows and 2 variables
#' @source 1
# Applied Linear Regression by Sanford Weisberg. Exercise 1.21
"airfreight.breakage"

if(FALSE){
  airfreight.breakage<-data.frame(transfers=c(1,0,2,0,3,1,0,1,2,0),
                                  broken.ampules=c(16,9,17,12,22,13,8,15,19,11))
  setwd(file.path(Mydirectories::box.directory(),"Teaching/LecturesJPSM/Surv_615_Regression_and_analysis_of_variance/Handouts_Exams_HW/data_package/JPSMSurv615/"))
  save(airfreight.breakage,file="data/airfreight.breakage.rdata")
}


#' grades' grades from hw1 and quiz
#'
#'
#' \itemize{
#'   \item HW1. homework 1 grades
#'   \item Quiz. Quiz grades
#' }
#'
#' @format A data frame
#' @source 1
"grades"

if(FALSE){
  grades<-data.frame(HW1=c(22,19,17.5,17,17,16,16,15.5,15,15,15,15,14.5,14.5,14.5,13.5,13,12.5,10.75,5.75,4.5),
                     Quiz=c(7,9,7,6,7,8,7,4,5,5,6,5,3,3,3,10,2,2,5,3,4))
  setwd(file.path(Mydirectories::box.directory(),"Teaching/LecturesJPSM/Surv_615_Regression_and_analysis_of_variance/Handouts_Exams_HW/data_package/JPSMSurv615/"))
  save(grades,file="data/grades.rdata")
}


#' power.cells' A researcher studied the effects of the charge rate and temperature on the life of a new type of poser cell in a preliminqry small-scale experiment. The charge rate $($X_1$) was controlled at three levels ($.6$. $1$ and $1.4$ amperes) and the ambient temperature ($X_2$) was controlled at three levels (10,20,30 Celcius degrees). Factors pertaining to the discharge of the power cell were hjeld at fixed levels. The life of the power cell ($Y$) was measured in terms  o f the number of discharge-charge cycles that power cell underwent vefore it failed. 
#'
#'
#' \itemize{
#'   \item cycles. Number of Cycles
#'   \item charge.rate. Charge rate (in amperes)
#'   \item temperature. Temperature (in Celcius)
#' }
#'
#' @format A data frame
#' @source S.<. Sidik, H.F. Leivecki and J. M. Bozek, Cycles Till Failure of Silver-Zinc Cells with Competing Failure Modes - preliminary data analysus, NASA Technical Memorandum 81556, 1980
"power.cells"

if(FALSE){
  power.cells<-data.frame(cycles=c(150,86,49,288,157,131,184,109,279,235,224),
                     charge.rate=c(0.6,1,1.4,0.6,1,1,1,1.4,0.6,1,1.4),
                     temperature=c(10,10,10,20,20,20,20,20,30,30,30))
  setwd(file.path(Mydirectories::box.directory(),"Teaching/LecturesJPSM/Surv_615_Regression_and_analysis_of_variance/Handouts_Exams_HW/data_package/JPSMSurv615/"))
  save(power.cells,file="data/power.cells.rdata")
}



#' job.proficiency' A personnel officer in a fovenmental agency administered four newly developed aptidute tests to each of $25$ applicants for entry-level clerical positions in the agency. For purpose of the stdy, all 25 applicants were accepted for positions irrespective of their test scores. Ager a probationary perio, each applicant was rated for proficiency on the job. the scores on the four tests ($X_1$, $X_2$, $X_3$, $X_4$) and the job proviviency score ($Y$) for the 25 employees were as follows
#'
#'
#' \itemize{
#'   \item Y. job proficiency score
#'   \item X1. test 1 score 
#'   \item X2. test 2 score 
#'   \item X3. test 3 score 
#'   \item X4. test 4 score 
#' }
#'
#' @format A data frame
#' @source S.<. Sidik, H.F. Leivecki and J. M. Bozek, Cycles Till Failure of Silver-Zinc Cells with Competing Failure Modes - preliminary data analysus, NASA Technical Memorandum 81556, 1980
"power.cells"

if(FALSE){
  job.proficiency<-data.frame(Y=c(88,80,96,76,80,73,58,116,104,99,64,126,94,71,111,109,100,127,99,82,67,109,78,115,83),
                          X1=c(86,62,110,101,100,78,120,105,112,120,87,133,140,84,106,109,104,150,98,120,74,96,104,94,91),
                          X2=c(110,97,107,117,101,85,77,122,119,89,81,120,121,113,102,129,83,118,125,94,121,114,73,121,129),
                          X3=c(100,99,103,93,95,95,80,116,106,105,90,113,96,98,109,102,100,107,108,95,91,114,93,115,97),
                          X4=c(87,100,103,95,88,84,74,102,105,97,88,108,89,78,109,108,102,110,95,90,85,103,80,104,83))
  setwd(file.path(Mydirectories::box.directory(),"Teaching/LecturesJPSM/Surv_615_Regression_and_analysis_of_variance/Handouts_Exams_HW/data_package/JPSMSurv615/"))
  save(job.proficiency,file="data/job.proficiency.rdata")
}

#' hospital' A hospital administrator wished to study the relation between patient satisfaction ($Y$) and patient age ($X_1$, in years), severity of illness ($X_2$, an index) and anxiety level ($X_3$, an index). The administrator  randomly selected 23 patients  and collected  the data presented below, where larger values of  $Y$, $X_2$, $X_3$ are, respectively, associated with  more satisfaction,  increased severity of illness, and more anxiety.
#'
#'
#' \itemize{
#'   \item Y. patien satisfaction
#'   \item X1. Age in years
#'   \item X2. severity of illness 
#'   \item X3. anxiety level
#' }
#'
#' @format A data frame

"hospitals"


if(FALSE){
  hospital<-data.frame(
matrix(c(48.0,50.0,51.0,2.3,
57.0,36.0,46.0,2.3,
66.0,40.0,48.0,2.2,
70.0,41.0,44.0,1.8,
89.0,28.0,43.0,1.8,
36.0,49.0,54.0,2.9,
46.0,42.0,50.0,2.2,
54.0,45.0,48.0,2.4,
26.0,52.0,62.0,2.9,
77.0,29.0,50.0,2.1,
89.0,29.0,48.0,2.4,
67.0,43.0,53.0,2.4,
47.0,38.0,55.0,2.2,
51.0,34.0,51.0,2.3,
57.0,53.0,54.0,2.2,
66.0,36.0,49.0,2.0,
79.0,33.0,56.0,2.5,
88.0,29.0,46.0,1.9,
60.0,33.0,49.0,2.1,
49.0,55.0,51.0,2.4,
77.0,29.0,52.0,2.3,
52.0,44.0,58.0,2.9,
60.0,43.0,50.0,2.3),23,4,byrow=TRUE))
  
  names(hospital)<-c("Y","X1","X2","X3")
  setwd(file.path(Mydirectories::Dropbox.directory(),"Travail/Enseignement/LecturesJPSM/Surv_615_Regression_and_analysis_of_variance/Handouts_Exams_HW/data_package/JPSMSurv615/"))
  write.csv(hospital,file="../../../Datasets/hospital.csv")
  save(hospital,file="data/hospital.rdata")
  }


