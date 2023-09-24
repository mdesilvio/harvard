library(gtools)
library(tidyverse)
library(ggplot2)
library(knitr)
library(dslabs)

set.seed(29, sample.kind = "Rounding")
n <-1000
B <- 10000
l <- -150000
p <- 0.015
x <- 3268

X <- replicate(B,{
  new_p <- p + sample(seq(-0.01, 0.01, length = 100), 1)
  Y <- sample(c(x,l), n, replace = TRUE, prob=c(1-new_p, new_p))
  sum(Y)
})
mean(X)

sum(X<0)/B

mean(X<= -1000000)







#p<- seq(0.01, 0.03, 0.0025)
#f <- function(p){
#  mu <- n * (a*p + b*(1-p))
#  err <- sqrt(n) * abs(b-a) * sqrt(p*(1-p))
#  pnorm(-1000000, mu, err)
#}
#sapply(p, FUN=f)
