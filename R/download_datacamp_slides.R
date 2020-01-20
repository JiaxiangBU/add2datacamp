#' Easily download DataCamp slides.
#' @param input character
#' @param dir character
#' @importFrom stringr str_replace
#' @importFrom glue glue
#' @importFrom dplyr mutate
#' @importFrom purrr map2
#' @export
#' @examples
#' download_datacamp_slides(
#' input = file.path(
#' "https://s3.amazonaws.com/assets.datacamp.com/production",
#' "course_15268/slides/chapter1.pdf"),
#' dir = "refs")
download_datacamp_slides <-
    function(input = "https://s3.amazonaws.com/assets.datacamp.com/production/course_15268/slides/chapter{1:4}.pdf",
             dir = "refs") {
        if (!dir.exists(dir))
            dir.create(dir)
        if (basename(input) == 'chapter1.pdf') {
            dirname <- dirname(input)
            basename <- basename(input) %>% stringr::str_replace("1", "\\{1:4\\}")
            input <- file.path(dirname, basename)
        } else {
            input
        }
        data.frame(input = glue::glue(input)) %>%
            dplyr::mutate(input = as.character(input),
                   basename = basename(input)) %>%
            # download.file need chr instead of glue
            dplyr::mutate(download = purrr::map2(
                input,
                basename,
                ~ download.file(.x, destfile = file.path(dir, .y), mode = 'wb')
            ))
    }
