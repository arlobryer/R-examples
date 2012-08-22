library(MASS)
#You can get help on the dataset you're interested in like this:
## help(phones)
## dat<-data(phones)
## head(phones)
## nrow(phones)
n<-length(phones[[1]])
## phones.length
phones.mod1 <- lm(calls[2:n] ~ year[2:n] + calls[1:(n-1)], data = phones)
phones.mod1
plot(phones.mod1)
