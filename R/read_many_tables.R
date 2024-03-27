#' Read many data frames with the same columns from many text files.
#'
#' @param prefix A string with the first part of the filename.
#' @param range Numeric vector with the numbers which differ from file to file.
#' @param prefix A string with the last part of the filename. Typically consists of a file extension.
#' @param is.header A local value indicating whether the file contains the names of the variables
#'                  as its first line. The default value is TRUE.
#' @return A single data frame.
#' @examples
#' read.many.tables ("N1000_k8_O0.2_beta0.5_part", 1:10, ".txt")
#' read.many.tables ("precision_N", c(100,200,500,1000,2000,5000), ".txt")
#' @export

read_many_tables <- function (prefix, range, suffix, is.header=TRUE) {
  dataframes <- lapply (range,
                        function(ii) read.table (paste (prefix,ii,suffix,sep=""), header=is.header))
  data.table::rbindlist(dataframes)
}
