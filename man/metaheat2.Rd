\name{metaheat2}
\Rdversion{1.1}
\alias{metaheat2}

\title{
Function to plot heatmap
}
\description{
Function is modification of function \code{heatmap.2} from package gplots
}
\usage{
metaheat2(x, Rowv = TRUE, Colv = if (symm) "Rowv" else TRUE, distfun = dist, hclustfun = hclust, dendrogram = c("both", "row", "column", "none"), symm = FALSE, scale = c("none", "row", "column"), na.rm = TRUE, revC = identical(Colv, "Rowv"), add.expr, breaks, symbreaks = min(x < 0, na.rm = TRUE) || scale != "none", col = "heat.colors", colsep, rowsep, sepcolor = "white", sepwidth = c(0.05, 0.05), cellnote, notecex = 1, notecol = "cyan", na.color = par("bg"), trace = c("column", "row", "both", "none"), tracecol = "cyan", hline = median(breaks), vline = median(breaks), linecol = tracecol, margins = c(5, 5), ColSideColors, RowSideColors, cexRow = 0.2 + 1/log10(nr), cexCol = 0.2 + 1/log10(nc), labRow = NULL, labCol = NULL, key = TRUE, keysize = 1.5, density.info = c("histogram", "density", "none"), denscol = tracecol, symkey = min(x < 0, na.rm = TRUE) || symbreaks, densadj = 0.25, main = NULL, xlab = NULL, ylab = NULL, lmat = NULL, lhei = NULL, lwid = NULL, legend.names, discrete = FALSE, horiz=TRUE, ...)
}

\arguments{
\item{x}{numeric matrix of the values to be plotted.}
\item{Rowv}{determines if and how the row dendrogram should be reordered. By default, it is TRUE, which implies dendrogram is computed and reordered based on row means. If NULL or FALSE, then no dendrogram is computed and no reordering is done. If a \code{\link{dendrogram}}, then it is used "as-is", ie without any reordering. If a vector of integers, then dendrogram is computed and reordered based on the order of the vector. }
\item{Colv}{determines if and how the column dendrogram should be reordered. Has the options as the Rowv argument above and additionally when x is a square matrix, \code{Colv = "Rowv"} means that columns should be treated identically to the rows. }
\item{distfun}{function used to compute the distance (dissimilarity) between both rows and columns. Defaults to \code{\link{dist}}. }
\item{hclustfun}{function used to compute the hierarchical clustering when Rowv or Colv are not dendrograms. Defaults to \code{\link{hclust}}. }
\item{dendrogram}{character string indicating whether to draw 'none', 'row', 'column' or 'both' dendrograms. Defaults to 'both'. However, if Rowv (or Colv) is FALSE or NULL and dendrogram is 'both', then a warning is issued and Rowv (or Colv) arguments are honoured. }
\item{symm}{logical indicating if x should be treated symmetrically; can only be true when x is a square matrix. }
\item{scale}{character indicating if the values should be centered and scaled in either the row direction or the column direction, or none. The default is \code{"row"} if \code{symm} false, and \code{"none"} otherwise. }
\item{na.rm}{logical indicating whether NA's should be removed. }
\item{revC}{logical indicating if the column order should be \code{\link{rev}}ersed for plotting, such that e.g., for the symmetric case, the symmetry axis is as usual. }
\item{add.expr}{expression that will be evaluated after the call to \code{image}. Can be used to add components to the plot. }
\item{breaks}{(optional) Either a numeric vector indicating the splitting points for binning x into colors, or a integer number of break points to be used, in which case the break points will be spaced equally between \code{min(x)} and \code{max(x)}. }
\item{symbreaks}{Boolean indicating whether breaks should be made symmetric about 0. Defaults to \code{TRUE} if the data includes negative values, and to \code{FALSE} otherwise. }
\item{col}{colors used for the image. Defaults to heat colors (\code{heat.colors}). }
\item{colsep, rowsep, sepcolor}{(optional) vector of integers indicating which columns or rows should be separated from the preceding columns or rows by a narrow space of color \code{sepcolor}. }
\item{sepwidth}{(optional) Vector of length 2 giving the width (colsep) or height (rowsep) the separator box drawn by colsep and rowsep as a function of the width (colsep) or height (rowsep) of a cell. Defaults to \code{c(0.05, 0.05)} }
\item{cellnote}{(optional) matrix of character strings which will be placed within each color cell, e.g. p-value symbols.} 
\item{notecex}{(optional) numeric scaling factor for \code{cellnote} items. }
\item{notecol}{(optional) character string specifying the color for \code{cellnote} text. Defaults to "green". }
\item{na.color}{Color to use for missing value (\code{NA}). Defaults to the plot background color. }
\item{trace}{character string indicating whether a solid "trace" line should be drawn across 'row's or down 'column's, 'both' or 'none'. The distance of the line from the center of each color-cell is proportional to the size of the measurement. Defaults to 'column'. }
\item{tracecol}{character string giving the color for "trace" line. Defaults to "cyan". }
\item{hline, vline, linecol}{Vector of values within cells where a horizontal or vertical dotted line should be drawn. The color of the line is controlled by linecol. Horizontal lines are only plotted if trace is 'row' or 'both'. Vertical lines are only drawn if trace 'column' or 'both'. hline and vline default to the median of the breaks, linecol defaults to the value of tracecol. }
\item{margins}{numeric vector of length 2 containing the margins (see \code{\link{par}}(\code{mar= *})) for column and row names, respectively. }
\item{ColSideColors}{(optional) character vector of length \code{ncol(x)} containing the color names for a horizontal side bar that may be used to annotate the columns of x. }
\item{RowSideColors}{(optional) character vector of length \code{nrow(x)} containing the color names for a vertical side bar that may be used to annotate the rows of x. }
\item{cexRow, cexCol}{positive numbers, used as \code{cex.axis} in for the row or column axis labeling. The defaults currently only use number of rows or columns, respectively. }
\item{labRow, labCol}{character vectors with row and column labels to use; these default to \code{rownames(x)} or \code{colnames(x)}, respectively. }
\item{key}{logical indicating whether a color-key (legend) should be shown. }
\item{keysize}{numeric value indicating the size of the key }
\item{density.info}{character string indicating whether to superimpose a 'histogram', a 'density' plot, or no plot ('none') on the color-key. }
\item{denscol}{character string giving the color for the density display specified by \code{density.info}, defaults to the same value as \code{tracecol}. }
\item{symkey}{Boolean indicating whether the color key should be made symmetric about 0. Defaults to \code{TRUE} if the data includes negative values, and to \code{FALSE} otherwise. }
\item{densadj}{Numeric scaling value for tuning the kernel width when a density plot is drawn on the color key. (See the \code{adjust} parameter for the \code{density} function for details.) Defaults to 0.25. }
\item{main, xlab, ylab}{main, x- and y-axis titles; defaults to none. }
\item{lmat, lhei, lwid}{visual layout: position matrix, column height, column width. See below for details }


  \item{legend.names}{
character vector with labels of categories - used in legend
}
  \item{discrete}{
Logical, when \code{TRUE} boxes filled with the specified colors and names specified in \code{legend.names} are added as legend
}
\item{horiz}{Logical, when \code{TRUE} the legend is arranged horizontally}
\item{...}{additional arguments passed on to \code{image}}
}

\details{ See function \code{heatmap.2} in gplots package for details}

\author{
Ivana Ihnatova
}


\keyword{hplot}

