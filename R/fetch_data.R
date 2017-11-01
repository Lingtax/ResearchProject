#' Retrieves data from online repository
#'
#' @param url A string containing the remote location of the data file
#' @param filename A string of the preferred output filename with extension
#'
#' @return
#' @export
#'
#' @examples
#' fetch_data("https://osf.io/nq64k/", "ex1.csv")
fetch_data <- function(url, filename) {
  if (!dir.exists("./data/")) dir.create("./data/")
  download.file(url, paste0("./data/", filename))

}
