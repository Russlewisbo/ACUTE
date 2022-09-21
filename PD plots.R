library(drda)
fit <- drda(tpos ~ conc, data=ec50_KPCB, mean_function = "logistic4", max_iter = 1000)
summary (fit)
plot(fit, xlab = "log(conc)", ylab = "Tpos hrs")
