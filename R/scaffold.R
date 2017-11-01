scaffold <- function() {
  print("Creating folder structure...")
  if (!dir.exists("./data/"))    dir.create("./data/")
  if (!dir.exists("./helpers/")) dir.create("./helpers/")
  if (!dir.exists("./scripts/")) dir.create("./scripts/")
  if (!dir.exists("./output/"))  dir.create("./output/")

  print("Initialising git...")
  git2r::init(".")
  x <- ".Rproj.user
.Rhistory
.RData
.Ruserdata
data/"
  write(x, ".gitignore")
  print("Linking to github...")
  usethis::use_github()
 }

