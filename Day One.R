xcode-select -- install

git --version

install.packages("usethis")

if (!requireNamespace("usethis", quietly= TRUE)){
  install.packages("usethis")
}
gert::git_config_global()

username<- "Xivumbiwa Maswanganyi"
email <- "MSWXIV001@MYUCT.AC.ZA"

stopifnot(!is.null(username))
stopifnot(!is.null(email))

gert::git_config_global_set("user.name",username)
gert::git_config_global_set("user.email",email)


usethis:: use_git()

usethis:: create_github_token()

gitcreds:: gitcreds_set()

if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes")
}

remotes::install_github("MiguelRodo/projrsimple")

projr_init()

#

11