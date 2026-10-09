
#' Apply the Complete sctheme Brand Style
#'
#' Combines the custom plot theme with the sctheme
#' color and fill scales for consistent styling.
#'
#' @return A list of ggplot2 theme and scale components.
#' @export
sctheme <- function() {
  list(
    theme_custom(),
    ggplot2::scale_color_manual(
      values = c(
        "#2B5C8F",
        "#8C7AA9",
        "#C47C86"
      )
    ),
    ggplot2::scale_fill_manual(
      values = c(
        "#2B5C8F",
        "#8C7AA9",
        "#C47C86"
      )
    )
  )
}
