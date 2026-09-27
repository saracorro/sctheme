#' Calculate Category Counts and Percentage Shares
#'
#' Takes a data frame and grouping variable(s), counts the frequency of each group,
#' and calculates the proportion/percentage share.
#'
#' @param data A data frame or tibble
#' @param ... Unquoted column name(s) to group and aggregate by
#'
#' @return A summarized tibble with columns `n` (counts) and `percent` (percentage of total)
#' @export
#'
#' @examples
#' \dontrun{
#' library(dplyr)
#' calculate_shares(mpg, class)
#' }
calculate_shares <- function(data, ...) {
  data %>%
    dplyr::count(...) %>%
    dplyr::mutate(
      percent = round((n / sum(n)) * 100, 1)
    ) %>%
    dplyr::arrange(dplyr::desc(n))
}
