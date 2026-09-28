utils::globalVariables("n")

#' Calculate Shares
#'
#' Counts observations by the supplied grouping variables and calculates
#' the percentage represented by each group.
#'
#' @param data A data frame.
#' @param ... Variables to group by.
#'
#' @return A data frame containing the group counts and percentages.
#'
#' @export
calculate_shares <- function(data, ...) {
  data |>
    dplyr::count(...) |>
    dplyr::mutate(
      percent = round((n / sum(n)) * 100, 1)
    ) |>
    dplyr::arrange(dplyr::desc(n))
}
