## [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **Wetter-Scagnostics** [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/)

```yaml


Name of Quantlet: Wetter-Scagnostics

Published in: SCG_Scagnostics

Description: "Calculates the scagnostic measures for the dataset and plots the SPLOM, the scagnostics SPLOM and the heat-map of the scagnostic measures"

Keywords: 'scagnostics, scagnostic coefficients, SPLOM, heat-map'

Author: Alina Kohlmayer and Michaela Kordasch

Submitted:  Fri, April 3 2020 by Alina Kohlmayer

Datafile: Wetter_Semlach_20200402.csv

```

### R
```r


# Packages needed ---------------------------------------------------------


install.packages("rJava")
install.packages("lattice")
install.packages("alphahull")
install.packages("scagnostics")
install.packages("tripack")
install.packages("RTriangle")
install.packages("igraph")
install.packages("psych")
install.packages("gplots")
install.packages("RColorBrewer")



# Library -----------------------------------------------------------------

library(rJava)
library(lattice)
library(alphahull)
library(scagnostics)
library(tripack)
library(RTriangle)
library(igraph)
library(psych)
library(gplots)
library(RColorBrewer)


```

automatically created on 2020-04-03
