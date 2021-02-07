
<!-- README.md is generated from README.Rmd. Please edit that file -->

## xaringanBuilder <img src="man/figures/hex_sticker.png" align="right" width="200"/>

Build xaringan slides to multiple output formats:

  - html
  - pdf
  - gif
  - pptx
  - png “thumbnail” of first slide

## Installation

You can install the current version of xaringanBuilder from GitHub:

    # install.packages("remotes")
    remotes::install_github("jhelvy/xaringanBuilder")

## Usage

    library(xaringanBuilder)

The xaringan Rmd files used in all examples below can be found
[here](https://github.com/jhelvy/xaringanBuilder/tree/master/inst/example)

### Build All Output Types

Use `build_all()` to build all output types from a Rmd file:

    build_all("slides.Rmd") # Builds every output by default

Use the `include` or `exclude` arguments to control which output types
to include or exclude:

    # Both of these build html, pdf, and gif outputs
    build_all("slides.Rmd", include = c("html", "pdf", "gif"))
    build_all("slides.Rmd", exclude = c("pptx", "thumbnail"))

### Build HTML

Build an html file from a Rmd file:

    build_html("slides.Rmd")

### Build PDF

Build a pdf file from a Rmd or html file:

    build_pdf("slides.Rmd")
    build_pdf("slides.html")

### Build GIF

Build a gif file from a Rmd, html, or pdf file:

    build_gif("slides.Rmd")
    build_gif("slides.html")
    build_gif("slides.pdf")

Example:

<img src="man/figures/slides.gif" width=500>

### Build PPTX

Build a pptx file from a Rmd, html or pdf file (pptx contains slides of
png images of each rendered xaringan slide):

    build_pptx("slides.Rmd")
    build_pptx("slides.html")
    build_pptx("slides.pdf")

### Build Thumbnail

Build a “thumbnail” png image of the first slide from a Rmd or html
file:

    build_thumbnail("slides.Rmd")
    build_thumbnail("slides.html")

Example:

<img src="man/figures/slides.png" width=500>

## “Complex” slides

“Complex” slides are slides that contain
[panelsets](https://pkg.garrickadenbuie.com/xaringanExtra/#/panelset) or
other html widgets / advanced features that might not render well as a
pdf. To render these, set `complex_slides = TRUE` in `build_pdf()`,
`build_gif()`, `build_pptx()`, or `build_all()`.

For example:

    build_pdf("slides_complex.Rmd", complex_slides = TRUE)
    build_pdf("slides_complex.html", complex_slides = TRUE)

**Note**: This option requires a local installation of Google Chrome as
well as the [chromote](https://github.com/rstudio/chromote) package.

## Partial / incremental slides

For pdf, gif, and pptx output types, if you want to build a new slide
for each increment on [incremental
slides](https://slides.yihui.org/xaringan/incremental.html#1), set
`partial_slides = TRUE` in `build_pdf()`, `build_gif()`, `build_pptx()`,
or `build_all()`.

For example:

    build_pdf("slides.Rmd", partial_slides = TRUE)
    build_pdf("slides.html", partial_slides = TRUE)

**Note**: This option requires a local installation of Google Chrome as
well as the [chromote](https://github.com/rstudio/chromote) package.

## Author, Version, and License Information

  - Author: *John Paul Helveston*
    [www.jhelvy.com](http://www.jhelvy.com/)
  - Date First Written: *September 27, 2020*
  - Most Recent Update: February 07 2021
  - License:
    [MIT](https://github.com/jhelvy/xaringanBuilder/blob/master/LICENSE.md)

## Citation Information

If you use this package in a publication, I would greatly appreciate it
if you cited it. You can get the citation information by typing
`citation("xaringanBuilder")` into R:

To cite xaringanBuilder in publications use:

John Paul Helveston (2020). xaringanBuilder: Functions for building
xaringan slides to different outputs.

A BibTeX entry for LaTeX users is

@Manual{, title = {xaringanBuilder: Functions for building xaringan
slides to different outputs.}, author = {John Paul Helveston}, year =
{2020}, note = {R package version 0.0.1}, url =
{<https://jhelvy.github.io/xaringanBuilder/>}, }
