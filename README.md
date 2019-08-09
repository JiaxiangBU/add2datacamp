
<!-- README.md is generated from README.Rmd. Please edit that file -->

# add2datacamp

<!-- badges: start -->

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
