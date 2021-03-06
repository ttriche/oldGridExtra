\name{marrangeGrob}
\alias{marrangeGrob}
\alias{print.arrangelist}
\title{marrangeGrob}
\usage{
  marrangeGrob(..., as.table = FALSE, clip = TRUE,
    top = quote(paste("page", g, "of", pages)),
    bottom = NULL, left = NULL, right = NULL)
}
\arguments{
  \item{...}{grobs}

  \item{as.table}{see \link{arrangeGrob}}

  \item{clip}{see \link{arrangeGrob}}

  \item{top}{see \link{arrangeGrob}}

  \item{bottom}{see \link{arrangeGrob}}

  \item{left}{see \link{arrangeGrob}}

  \item{right}{see \link{arrangeGrob}}
}
\value{
  a list of class arrangelist
}
\description{
  Interface to arrangeGrob that can dispatch on multiple
  pages
}
\details{
  If the layout specifies both nrow and ncol, the list of
  grobs can be split in multiple pages. Interactive devices
  print open new windows, whilst non-interactive devices
  such as pdf call grid.newpage() between the drawings.
}
\examples{
\dontrun{
require(ggplot2)
pl <- lapply(1:11, function(.x) qplot(1:10,rnorm(10), main=paste("plot",.x)))
ml <- do.call(marrangeGrob, c(pl, list(nrow=2, ncol=2)))
## interactive use; open new devices
ml
## non-interactive use, multipage pdf
ggsave("multipage.pdf", ml)
}
}
\author{
  baptiste Auguie
}

