## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(scatterbar)
library(ggplot2)

data("mOB")
data("adult_mouse_brain_ffpe")

# Basic scatterbar plot with default settings
p1 <- scatterbar(mOB$data, mOB$xy) + coord_fixed()
p2 <- scatterbar(adult_mouse_brain_ffpe$prop, adult_mouse_brain_ffpe$pos) + coord_fixed()

## ----patchwork----------------------------------------------------------------
library(patchwork)
p1 + p2


