library (drc)
model <- drm (tpos~conc, data = ec50_KPCB, fct=LL.4(names = c("Slope", "Lower Limit", "Upper Limit", "ED50")))
summary(model)
ED(model, c(5, 10, 50), interval = "delta")
plot(model, broken = TRUE, type = "all",
     xlab = "Antibiotic conc (μg/mL)", xlim = c(0, 100),
     ylab = "Time to positivity (Tpos)")

plot(model, type = c("confidence"), log = "x")
plot1 + plot(model, type = c("all"), log = "x")
