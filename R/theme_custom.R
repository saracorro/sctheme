#' Custom Brand ggplot2 Theme
#'
#' A custom ggplot2 theme featuring a soft off-white canvas, clean grid lines,
#' and Inter typography.
#'
#' @param base_size Base font size in points (default: 11)
#' @param base_family Base font family (default: "Inter")
#'
#' @return A ggplot2 theme object
#' @export
theme_custom <- function(base_size = 11, base_family = "Inter") {
  ggplot2::theme_minimal(
    base_size = base_size,
    base_family = base_family
  ) %+replace%
    ggplot2::theme(
      # Backgrounds
      plot.background = ggplot2::element_rect(fill = "#FAFAFA", color = NA),
      panel.background = ggplot2::element_rect(fill = "#FAFAFA", color = NA),

      # Grid Lines
      panel.grid.major = ggplot2::element_line(color = "#E0E0E0", linetype = "dashed", linewidth = 0.3),
      panel.grid.minor = ggplot2::element_blank(),

      # Text Hierarchy & Sizing
      plot.title = ggplot2::element_text(
        size = 18,
        face = "bold",
        color = "#111111",
        margin = ggplot2::margin(b = 8)
      ),
      plot.subtitle = ggplot2::element_text(
        size = 13,
        face = "plain",
        color = "#555555",
        margin = ggplot2::margin(b = 12)
      ),
      axis.title = ggplot2::element_text(
        size = 11,
        face = "bold",
        color = "#333333"
      ),
      axis.text = ggplot2::element_text(
        size = 9,
        color = "#555555"
      ),
      plot.caption = ggplot2::element_text(
        size = 8,
        face = "italic",
        color = "#777777",
        margin = ggplot2::margin(t = 10),
        hjust = 0
      ),

      # Title & Caption Alignment
      plot.title.position = "plot",
      plot.caption.position = "plot"
    )
}
