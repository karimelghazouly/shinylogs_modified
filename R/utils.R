
dropNulls <- function(x) {
  x[!vapply(x, is.null, FUN.VALUE = logical(1))]
}


get_timestamp <- function(time = NULL) {
  if (is.null(time))
    time <- Sys.time()
  format(time, format = "%Y-%m-%d %H:%M:%OS3%z")
}

is_sqlite <- function(path) {
  is.character(path) && grepl(pattern = "\\.sqlite$", x = path)
}

