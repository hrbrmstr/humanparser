#' Parse a "human" name into components
#'
#' @param full_name full name to parse
#' @return \code{list} with name parsed
#' @export
#' @examples
#' parse_name("John Smith Jr.")
parse_name <- function(full_name) {
  ct$call("parseName", full_name)
}

#' Parse a character vector of names into a data frame
#'
#' @param full_names character vector of names
#' @return \code{data.frame} with names parsed
#' @export
#' @examples
#' full_names <- c("David Regan", "Izaque Iuzuru Nagata",
#'                 "Christian Schmit de la Breli", "Peter Doyle", "Hans R.Bruetsch",
#'                 "Marcus Reichel", "Per-Axel Koch", "Louis Van der Walt",
#'                 "Mario Adamek", "Ugur Tozsekerli", "Judit Ludvai" )
#' parse_names(full_names)
parse_names <- function(full_names) {

  bind_rows(lapply(full_names,
                   function(x) data.frame(ct$call("parseName", x),
                                          stringsAsFactors=FALSE)))

}

.onAttach <- function(libname, pkgname) {

  ct <<- new_context()
  ct$source(system.file("js/underscore.js", package="V8"))
  ct$source(system.file("js/humanparser.js", package="humanparser"))

}
