# TODO: Add comment
# 
# Author: yangzhang
###############################################################################


corr <- function(directory, threshold = 0) {
	## 'directory' is a character vector of length 1 indicating
	## the location of the CSV files
	
	## 'threshold' is a numeric vector of length 1 indicating the
	## number of completely observed observations (on all
	## variables) required to compute the correlation between
	## nitrate and sulfate; the default is 0
	
	## Return a numeric vector of correlations
	
	compl_dat <- complete(directory)
	qualified_id <- compl_dat[compl_dat$nobs>threshold,]$id
	files <- list.files(directory, full.names=TRUE)
	frm <- data.frame()
	co <- c()
	for (i in qualified_id)	{
		dat <- read.csv(files[i])
		clean_dat <- dat[complete.cases(dat),]
		co <- c(co, cor(clean_dat$sulfate, clean_dat$nitrate))
		
	}
	co
	#cor(frm$sulfate,frm$nitrate)
}
