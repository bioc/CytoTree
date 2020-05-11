% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllClasses.R
\name{createCYT}
\alias{createCYT}
\title{create an CYT object}
\usage{
createCYT(
  raw.data,
  markers,
  meta.data,
  batch = NULL,
  batch.correct = FALSE,
  normalization.method = "none",
  verbose = FALSE,
  ...
)
}
\arguments{
\item{raw.data}{matrix. Raw data read from FCS file after perform
preprocessing.}

\item{markers}{vector. Detailed marker information in the gate of
flow cytometer.}

\item{meta.data}{data.frame. Raw metadata of each cell.
Columns "cell" and "stage" are required.}

\item{batch}{vector. Batch covariate (only one batch allowed).
Method to correct batch effect
function is refered to \code{\link[sva]{ComBat}}.}

\item{batch.correct}{logical. Whether to correct batch effect.
If TRUE, batch must be provided.}

\item{normalization.method}{character. Normalization and transformation
method. Whether to normalize and log transformed of raw.data.
In CytoTree workflow, it's better to perform transformation of
FCS data using \code{runExprsExtract} or \code{runExprsMerge}
before creating an CYT object. \code{CytoTree} only provide
log transforma method. If you need to using truncateTransform,
scaleTransform, linearTransform, quadraticTransform and
lnTransform, see \code{flowCore} for more
information. And \code{runExprsExtract} in
\code{CytoTree}, autoLgcl, cytofAsinh, logicle, arcsinh,
and logAbs can be used to perform transformation of FCS data.}

\item{verbose}{logical. Whether to print calculation progress.}

\item{...}{paramters pass to \code{correctBatchCYT} function.}
}
\value{
An CYT object with raw.data and markers and meta.data
}
\description{
This function is about how to build an CYT object.
   An CYT object is the base for the whole analysizing workflow
   of flow and mass cytometry data.
}
\examples{

if (FALSE) {
## See vignette tutorials
vignette(package = "CytoTree")

## Build using test data
markers <- c("CD43", "CD34", "CD90", "CD45RA",
             "CD31", "CD49f", "CD73", "FLK1", "CD38")

cyt <- createCYT(raw.data = test.fcs.data,
                 markers = markers,
                 meta.data = test.meta.data,
                 normalization.method = "log",
                 verbose = TRUE)

cyt

}

}