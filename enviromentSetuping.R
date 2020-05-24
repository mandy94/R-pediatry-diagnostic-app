install.packages("BayesNetBP")
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(c("graph", "RBGL", "Rgraphviz"))

install.packages("gRain", dependencies=TRUE)