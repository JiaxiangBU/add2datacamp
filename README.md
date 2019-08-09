
<!-- README.md is generated from README.Rmd. Please edit that file -->

# add2datacamp

<!-- badges: start -->

[![DOI](https://zenodo.org/badge/194385184.svg)](https://zenodo.org/badge/latestdoi/194385184)
<!-- badges: end -->

The goal of add2datacamp is to provide helpful functions to learn
courses from DataCamp.

## Installation

The development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("JiaxiangBU/add2datacamp")
```

## Example

``` r
library(add2datacamp)
download_datacamp_slides(input = "https://s3.amazonaws.com/assets.datacamp.com/production/course_15268/slides/chapter{1:4}.pdf",dir = "refs")
```

## Citations

Jiaxiang Li. (2019, August 9). JiaxiangBU/add2datacamp: add2datacamp
0.1.0 (Version v0.1.0). Zenodo. <http://doi.org/10.5281/zenodo.3364644>

``` bibtex
@misc{jiaxiang_li_2019_3364644,
  author       = {Jiaxiang Li},
  title        = {JiaxiangBU/add2datacamp: add2datacamp 0.1.0},
  month        = aug,
  year         = 2019,
  doi          = {10.5281/zenodo.3364644},
  url          = {https://doi.org/10.5281/zenodo.3364644}
}
```

If you use add2datacamp, I would be very grateful if you can add a
citation in your published work. By citing add2datacamp, beyond
acknowledging the work, you contribute to make it more visible and
guarantee its growing and sustainability. For citation, please use the
BibTex or the citation content.

-----

<h4 align="center">

**Code of Conduct**

</h4>

<h6 align="center">

Please note that the `add2datacamp` project is released with a
[Contributor Code of Conduct](.github/CODE_OF_CONDUCT.md).<br>By
contributing to this project, you agree to abide by its terms.

</h6>

<h4 align="center">

**License**

</h4>

<h6 align="center">

MIT © [Jiaxiang Li](LICENSE.md)

</h6>
