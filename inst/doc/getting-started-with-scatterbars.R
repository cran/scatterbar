## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ----setup--------------------------------------------------------------------
library(scatterbar)
data("mOB")

plot(mOB$xy)
head(mOB$data)

start.time <- Sys.time()
scatterbar::scatterbar(mOB$data, mOB$xy) + ggplot2::coord_fixed()
end.time <- Sys.time()
print(end.time - start.time)


## ----shiftorder---------------------------------------------------------------
library(ggplot2)
start.time <- Sys.time()
scatterbar::scatterbar(mOB$data[, c(2,3,4,5,6,7,8,1)], mOB$xy, size_x = 1, size_y = 1, padding_x = 0.1, padding_y = 0.1) +
  geom_point(data=mOB$xy, mapping=aes(x=x, y=y)) +
  theme_bw() + ylab('y') + ggplot2::coord_fixed()
end.time <- Sys.time()
print(end.time - start.time)

