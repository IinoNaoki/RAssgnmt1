# TODO: Add comment
# 
# Author: yangzhang
###############################################################################

fn=100
f2 = 101
y = read.csv("./specdata/100.csv")
nrow()
yna = na.omit(y)

id <- c(1,2,3,4,5)
cc <- c(3,5,7,9,13)
nobs <- c()
for (i in 1:5)	{
	nobs <- c(nobs,cc[i-1+1])
}
nobs