options(usethis.full_name = "kuro")
library(pacman)
p_load_gh("mkearney/pkgverse")
p_load(rmarkdown, testthat, roxygen2, here)

kuroker <- c(
  "data.table" ,"dplyr",  "forcats", "ggplot2", "here", "pacman", "pipeR", "purrr", "stringr", "tidyr",
  "RColorBrewer", "ggExtra", "viridis"
)

## create tidyweb pkgverse
pkgverse(
#   "atusyverse",
  kuroker,
  keep = here::here(..),
  use = c("readme_rmd", "rstudio", "mit_license", "git"),
  install_if = TRUE
)

 