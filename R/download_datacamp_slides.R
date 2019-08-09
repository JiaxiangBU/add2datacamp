#' Easily download DataCamp slides.
#' @param input character
#' @param dir character
#' @export
download_datacamp_slides <-
    function(input = "https://s3.amazonaws.com/assets.datacamp.com/production/course_15268/slides/chapter{1:4}.pdf",
             dir = "refs") {
        if (!dir.exists(dir))
            dir.create(dir)
        if (basename(input) == 'chapter1.pdf') {
            dirname <- dirname(input)
            basename <- basename(input) %>% str_replace("1", "\\{1:4\\}")
            input <- file.path(dirname, basename)
        } else {
            input
        }
        data.frame(input = glue(input)) %>%
            mutate(input = as.character(input),
                   basename = basename(input)) %>%
            # download.file need chr instead of glue
            mutate(download = map2(
                input,
                basename,
                ~ download.file(.x, destfile = file.path(dir, .y), mode = 'wb')
            ))
    }
