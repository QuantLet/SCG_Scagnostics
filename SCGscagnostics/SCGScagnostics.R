
# Packages needed ---------------------------------------------------------

install.packages("rJava")
install.packages("scagnostics")
install.packages("psych")
install.packages("MASS")


# Library -----------------------------------------------------------------

library(scagnostics)
library(psych)
library(MASS)



# Calculating the scagnostics  --------------------------------------------

scagnostics(Boston)
s = scagnostics(Boston)
o = scagnosticsOutliers(s)
o[o]
g = scagnosticsGrid(s)
go = g[o,]
plot(Boston[go$x])

e = scagnosticsExemplars(s)
e[e]
ge = g[e,]
par(mfrow = c(2,2))
for (i in 1:dim(ge)[1])
  plot(Boston[[ge$x[i]]], Boston[[ge$y[i]]], pch=".",
       xlab=names(Boston)[ge$x[i]], ylab=names(Boston)[ge$y[i]])


# Plotting the SPLOM  -----------------------------------------------------

pairs(Boston)

png(filename = "SPLOM BHD.png", bg = NA)
pairs(boston, pch = ".", col = "blue",
      main = "Scatterplot matrix (SPLOM) of Boston Housing Dataset")
dev.off()


# Plotting the SPLOM for the Scagnostic measures --------------------------

s = as.matrix(s)
t(s)
s1 = as.matrix(t(s))
pairs(s1)
par(bg = NA)

png(filename = "Scagnostics SPLOM BHD.png")
pairs(s1, pch = ".", col = "blue",main = "Scagnostics of Boston Housing Dataset")
dev.off()


