load_helpers <- function(trace = TRUE, ...) {
  if (!dir.exists("./helpers/")) warning("No helpers folder exists, consider running scaffold()")
  if (length(list.files("./helpers/")) == 0) warning("No helpers found")
  for (nm in list.files("./helpers/", pattern = "\\.[RrSsQq]$")) {
    if(trace) cat(nm,":")
    source(file.path("./helpers/", nm), ...)
    if(trace) cat("\n")
  }
}

