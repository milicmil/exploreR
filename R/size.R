#' Shape and Size Function
#'
#' Gives the shape and size of a dataframe
#'
#' @param x a dataframe
#'
#' @return a dataframe
#' @export
#'

size <- function(x) {

  # check that input is a dataframe
  if (!(is.data.frame(x))) {
    stop("Please input a dataframe")
  }

  # get all needed info
  rows<- nrow(x)
  columns<- ncol(x)
  size_in_memory<- as.numeric(object.size(x))

  # return a dataframe of the results
  data.frame(rows, columns, size_in_memory, stringsAsFactors = FALSE)
}
