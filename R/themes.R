#' Building a simpler ggplot theme
#'
#' This function modifies a pre-defined theme (theme_bw), and make it a bit simple.
#' @param NULL
#' @return NULL
#' @export
#' @examples
#' ggplot(mpg, aes(displ, hwy)) + theme_simple()
#' @importFrom ggplot2 theme_bw

theme_simple <- function() {
    theme_bw(base_size = 14,
             base_family = "") %+replace%
    theme(panel.grid = element_blank(),
          axis.text = element_text(color = "black"))
}

#' Scatter function
#' 
#' This function creates a scatter plot with using "deepskyblue4" color
#' @param color color of the scatter points
#' @return scatter plot 
#' @export
#' @examples
#' ggplot(mpg, aes(displ, hwy)) + scatter()

scatter <- function(color = "deepskyblue4", ...){
    geom_point(color = color, alpha = 0.8, ...)
}

#' define scatter function with linear fit
#'
#' This function modifies a pre-defined theme (theme_bw), and make it a bit simple.
#' @param NULL
#' @return NULL
#' @export
#' @examples
#' ggplot(mpg, aes(displ, hwy)) + theme_simple()
#' @importFrom ggplot2 theme_bw

scatter_fit <- function(...){
    geom_point(color = "gray20",
               shape = 21)
}

#' Linear function for ScatterLinear
#'
#' This function adds a linear fit line to data
#' @param NULL
#' @return NULL
#' @export
#' @examples
#' ggplot(mpg, aes(displ, hwy)) + scatter_fit() + nonlinear()
#' @importFrom ggplot2 geom_smooth
linear <- function(color = "deepskyblue4", se = FALSE, ...){
    geom_smooth(method = "lm",
                color = color,
                size = 1,
                se = se, ...)
}

#' NonLinear function for ScatterLinear
#'
#' This function adds a non-linear fit line to data
#' @param NULL
#' @return NULL
#' @export
#' @examples
#' ggplot(mpg, aes(displ, hwy)) + scatter_fit() + nonlinear()
#' @importFrom ggplot2 geom_smooth
nonlinear <- function(color = "deepskyblue4", se = FALSE, ...){
    geom_smooth(color = color,
                size = 1,
                se = se, ...)
}

#' Bar Plot
#'
#' This function creates a bar plot with pre-defined colors
#' @param NULL
#' @return NULL
#' @export
#' @examples
#' ggplot(mpg, aes(drv)) + bar()
#' @importFrom ggplot2 geom_bar
bar <- function(fill = "deepskyblue4", ...){
    geom_bar(fill = fill, ...)
}

#' Histogram
#'
#' This function creates a histogram with pre-defined colors
#' @param NULL
#' @return NULL
#' @export
#' @examples
#' ggplot(mpg, aes(hwy)) + histogram()
#' @importFrom ggplot2 geom_histogram
histogram <- function(fill = "deepskyblue4", ...){
    geom_histogram(fill = fill, color = "grey20", ...)
}

#' Boxplot
#'
#' This function creates a boxplot with pre-defined colors
#' @param NULL
#' @return NULL
#' @export
#' @examples
#' ggplot(mpg, aes(drv, hwy)) + box_simple()
#' @importFrom ggplot2 geom_boxplot
box_simple <- function(fill = "deepskyblue4", ...){
    geom_boxplot(fill = fill, ...)
}

