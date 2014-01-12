## ---- Chunk01 ----
説明変数 <- runif(100)
従属変数 <- 10 + 2 * 説明変数 + rnorm(100)


## ---- Chunk02 ----
result <- lm(従属変数~説明変数)


## ---- Chunk03 ----
library(xtable)
tab <- xtable(result, digits=3)
rownames(tab)[1]<-"切片"
colnames(tab)<-c("推定量","標準偏差","t値","P値")
print(tab, floating=FALSE)


## ---- Chunk04 ----
#library(tikzDevice)
# library(Cairo)
par(mar=c(5,4,1,1))
#par(family="Japan1GothicBBB")
par(family="HiraKakuProN-W3")
plot(説明変数,従属変数)
abline(result)


