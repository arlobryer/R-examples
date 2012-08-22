#!/usr/bin/env Rscript

#This script follows the example in Part 1 of:
#http://statmath.wu.ac.at/courses/heather_turner/index.html
dat <- read.table("../other_data/GHJ.txt", header = TRUE)
attach(dat)
plot(Food ~ Income, xlab = 'Weekly Household Income ($)',
     ylab = 'Weekly Household Expenditure on Food (Log $)')

#Try a linear model first
foodLM <- lm(Food ~ Income)
summary(foodLM)
#Compare this to a GLM
foodGLM <- glm(Food ~ Income)
summary(foodGLM)
