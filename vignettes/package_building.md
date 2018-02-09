---
title: "Building R package using command line options"
author: "Paramjot Singh"
date: "February 3, 2018"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{Vignette Title}
  %\VignetteEngine{knitr::rmarkdown}
  \usepackage[utf8]{inputenc}
---

# Introduction

This post describes the process of building an R package without using RStudio. This will come in handy for anyone who is using vim (and of course Nvim-R!) as a code editor for their development work. Alright, let's get moving.We are going to create a small package offering a new ggplot theme to demonstrate the process.

### Step 0: Install the required packages

```r
install.packages(c("devtools", "roxygen2", "testthat", "knitr"))
library(devtools)
has_devel()
```
The command `has_devel()` basically checks that everything is installed as expected. At the end of its output, you should see `TRUE` if everything goes alright.

### Step 1: Create a package directory
First, we are going to create the package directory where everything is going to reside related to this package. We will use the following command:


```r
create("~/projects/themeSimple")
```
