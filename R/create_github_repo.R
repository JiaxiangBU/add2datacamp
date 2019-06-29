#' Create a GitHub repository by one function.
create_github_repo <- function(repo_name, is_project, private_token = private_token, username = "JiaxiangBU") {
    glue(
        'curl -i -H "Authorization: token {private_token}" -d \'{{"name": "{repo_name}", "auto_init": false, "private": true}}\' https://api.github.com/user/repos'
    ) %>%
        system(intern = TRUE)
    library(devtools)
    if (is_project) {
        create_project(here::here(glue("../{repo_name}")))
    } else {
        create_package(here::here(glue("../{repo_name}")))
    }
    if (sessioninfo::os_name() %>% str_detect("Windows")) {
        glue(
            "git remote add origin git@github.com:{username}/{repo_name}.git
  git push -u origin master"
        ) %>% clipr::write_clip()
    } else {
        glue(
            "git remote add origin https://github.com/{username}/{repo_name}.git
  git push -u origin master"
        ) %>% clipr::write_clip()

    }


    dir_create(here::here(glue("../{repo_name}/refs")))
    dir_create(here::here(glue("../{repo_name}/analysis")))
    dir_create(here::here(glue("../{repo_name}/output")))
    print("the git code to push github on the clipboard!")
}
