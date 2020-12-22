

write_index_html <- function() {

  index_html <- "https://raw.githubusercontent.com/favstats/rmdprotectr/main/inst/index.html"

  raw <- paste0(readLines(index_html), collapse = "\n")

  # if(missing(path)){
  #   path <- ""
  # }

  write.table(raw,
              file='index.html',
              quote = FALSE,
              col.names = FALSE,
              row.names = FALSE)
}




#' Password protect an Rmd file
#'
#' @param path the rmd file you want to protect
#' @param pw the password
#' @param ... additional arguments passed to rmarkdown::render
#'
#' @details
#' Warning: You are using this at your own risk. Make sure your encryption key is
#' strong enough. For serious use cases, please also review the code of the functions.
#' Any feedback is appreciated. This is an early package version.
#'
#' @return
#' The key used to encrypt the file as an invisible raw vector.
#'
#' @references
#' The package follows the same approach as this GitHub repo \href{https://github.com/scottishstoater/protected-github-pages}.
#'
#' @export
protect_rmd <- function(path, pw, ...){

  folder_name <- openssl::sha1(pw)

  if(!dir.exists(folder_name)){

    dir.create(folder_name)
    message("Created folder with hash")

  }

  rmarkdown::render(path, output_file = paste0(folder_name, "/index.html"), ...)

  write_index_html()
  message("Wrote index.html to working directory")

}

