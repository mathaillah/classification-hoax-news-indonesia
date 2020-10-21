#install.packages("C50")
library(C50)
data <- read.csv("C:/Users/matha/PycharmProjects/TA_Hoaks/Ver.0.0/dataset.csv")
X <- data[,0:5662]
Y <- data[5663]

tree_mod <- C5.0(X,Y$Kategori,trial=100)
tree_mod
summary(tree_mod)
plot(tree_mod)
