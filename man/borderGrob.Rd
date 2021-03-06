\name{borderGrob}
\alias{borderGrob}
\alias{grid.border}
\title{borderGrob}
\usage{
  borderGrob(type = 1, colour = "white", vp = NULL, ...)
}
\arguments{
  \item{type}{which borders to draw}

  \item{colour}{colour}

  \item{...}{additional arguments passed to gpar()}

  \item{vp}{viewport}
}
\value{
  a grob
}
\description{
  an open rectangular borderdraw
}
\examples{
pushViewport(viewport(width=0.5, height=0.5, layout=grid.layout(4, 4, w=0.9, height=0.9)))
vp = viewport(width=0.9, height=0.9)
type <- 1
for(ii in 1:4){
 for(jj in 1:4){
  pushViewport(viewport(layout.pos.r=ii, layout.pos.c=jj))
  grid.rect(gp=gpar(col="grey",fill="black"))
  grid.text(paste("t = ", type), gp=gpar(col="white"))
  grid.border(type, vp=vp)
  upViewport()
  type <- type + 1
 }
}
}
\seealso{
  \code{grid.segments}, \code{grid.points}

  Other grob userlevel: \code{\link{arcTextGrob}},
  \code{\link{barbedGrob}}, \code{\link{colorstripGrob}},
  \code{\link{ebimageGrob}}, \code{\link{ellipseGrob}},
  \code{\link{interleaven}}, \code{\link{ngonGrob}},
  \code{\link{patternGrob}}, \code{\link{pixmapGrob}},
  \code{\link{rpatternGrob}}, \code{\link{stextGrob}},
  \code{\link{tableGrob}}, \code{\link{virtualGrob}}
}

