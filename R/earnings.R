#' Earnings of employees of XYZ company
#'
#' The data set contains the monthly salary of employees of company XYZ.
#'
#' @docType data
#' @usage data (earnings)
#' @format A data frame with 3 rows and 2 variables.
#' \describe{
#'  \item{name}{character - the name of an employee}
#'  \item{salary}{numerical - the monthly salary of the employee}
#' }
#' @keywords datasets earnings
#' @examples
#' barplot (earnings$salary, names.arg = earnings$name)
"earnings"
