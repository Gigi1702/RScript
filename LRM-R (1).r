
if (length(commandArgs(trailingOnly= TRUE))<1){
    stop("Usage: Rscript LRM-R.R <csv_file>")
}

csv_file <- commandArgs(trailingOnly = TRUE)[1]

data <- read.csv(csv_file)

png(file = "r_orig.png")
plot(data$x, data$y)

lmData= lm(y~x, data = data)

lmData

summary(lmData)

pred <- predict(lmData, data)
png(file = "r_lm.png")
plot(data$x, data$y,xlab = 'X', ylab ='Y')
lines(data$x, pred)
title('Linear regression Model R')




