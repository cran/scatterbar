## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
# Load packages and example adult mouse brain dataset
library(scatterbar)
library(ggplot2)

data("adult_mouse_brain_ffpe")

## ----flipped plot-------------------------------------------------------------
# Flip the x and y columns of the position data
flipped_pos <- adult_mouse_brain_ffpe$pos[, c(2,1)]
# Rename the columns to ensure the position data has the correct column names
colnames(flipped_pos) <- c('x','y')
# Create the scatterbar plot with the flipped position data
start.time <- Sys.time()
scatterbar::scatterbar(adult_mouse_brain_ffpe$prop, 
                       flipped_pos, padding_x = 0.3, padding_y = 0.3,
                       size_x = 220, size_y = 220,
                       legend_title = "Cell Types") + coord_fixed()
end.time <- Sys.time()
print(end.time - start.time)

## ----flipped orientation------------------------------------------------------
# Create the scatterbar plot with the flipped scatterbar oreintation
start.time <- Sys.time()
scatterbar::scatterbar(adult_mouse_brain_ffpe$prop, 
                       flipped_pos, padding_x = 0.3, padding_y = 0.3,
                       size_x = 220, size_y = 220,
                       legend_title = "Cell Types") + coord_fixed() + coord_flip()
end.time <- Sys.time()
print(end.time - start.time)

