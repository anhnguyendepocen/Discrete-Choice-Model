
install.packages('AER')

install.packages('mlogit')

library(AER)

library(mlogit)
library(dplyr)

data("TravelMode", package="AER") # load data

head(TravelMode,8)

dim(TravelMode) # 840 individuals 8 independent variables

Travel = TravelMode

nrow(Travel)

ncol(Travel)

length(unique(Travel$individual))

table(is.na(Travel))

theta = c(1,2,3,-0.001, -0.003, -0.005) # one set of parameters

theta # mix of constant variable and 3 coefficient for the 3 independent varaibles (gcost, wait, travel)

sample <- filter(Travel, individual ==1) # filter the individual 1

sample

sample$constant <-0

sample

sample$constant[sample$mode=="air"] = theta[1]

sample

sample$constant[sample$mode=="train"] = theta[2]

sample$constant[sample$mode=="bus"] = theta[3]

sample$utility = theta[4]*sample$gcost + theta[5]*sample$wait + theta[6]*sample$travel + sample$constant

sample

sample

actual_choice <- filter(sample, choice =='yes')

actual_choice

actual_choice$utility

sample$utility

exp(sample$utility)

sum(exp(sample$utility))

(actual_choice_probability = exp(actual_choice$utility)/sum(exp(sample$utility)))

choice.prob <-function(sample){
    x=filter(sample, choice=='yes')
    prob = exp(x$utility)/sum(exp(sample$utility))
    return(prob)
    }

group = group_by(Travel, individual) # group the data by individuals

head(group,8)

head(summarise(group, avg_travel = mean(travel)),2) # calcuate the average travel time for each individuals, showing only 2 persons

Travel$utility<-runif(nrow(Travel),0,1) # generate some random utility, each utility between 0 and 1

head(Travel,8)

Probability <- Travel %>% group_by(individual) %>% do(data.frame(prob=choice.prob( . )))

head(Probability,3)

sum(log(Probability$prob))

Likelihood <- function(theta) {
    Travel$constant =0
    Travel$constant[sample$mode=="air"] = theta[1]
    Travel$constant[sample$mode=="train"] = theta[2]
    Travel$constant[sample$mode=="bus"] = theta[3]
    Travel$utility = theta[4]*Travel$gcost + theta[5]*Travel$wait + theta[6]*Travel$travel + Travel$constant
    
    Probability <- Travel %>% group_by(individual) %>% do(data.frame(prob=choice.prob( . )))
    return(-sum(log(Probability$prob)))
    }

estimation <- optim(c(4.0,4.0,3.0,-0.001,-0.01,-0.001), Likelihood, method ="BFGS")

estimation$par

Data <- mlogit.data(Travel, choice="choice", shape="long", chid.var = "individual", alt.var ="mode", drop.index= TRUE)

head(Data,4)

ml.Data <- mlogit(choice ~ gcost + wait + travel, Data, reflevel ="car" ) # reference group for constant =0

summary(ml.Data)

apply(fitted(ml.Data, outcome=FALSE),2,mean) #  matrix 1 indicates rows, 2 indicates columns

help(apply)

ml.Data$freq/sum(ml.Data$freq)
