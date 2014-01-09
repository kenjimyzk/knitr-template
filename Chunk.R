## ---- Chunk01 ----
x <- runif(100)
y <- 10 + 2 * x + rnorm(100)

## ---- Chunk02 ----
result <- lm(y~x)


## ---- Chunk03 ----
library(xtable)
print(xtable(result, digits=3), floating=FALSE)



## ---- Chunk04 ----
plot(x,y)
abline(result)


