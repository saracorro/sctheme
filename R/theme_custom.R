#' Custom ggplot2 Theme
#'
#' Inter typography, a soft off-white background, and subtle gridlines.
#'
#' @param base_size Base font size in points. Default is 11.
#' @param base_family Base font family. Default is "Inter".
#'
#' @return A ggplot2 theme object.
#'
#' @export
theme_custom <- function(base_size = 11, base_family = "Inter") {

  ggplot2::theme_minimal(
    base_size = base_size,
    base_family = base_family
  ) +
    ggplot2::theme(
      plot.background = ggplot2::element_rect(
        fill = "#F8F7F5",
        color = NA
      ),
      panel.background = ggplot2::element_rect(
        fill = "#F8F7F5",
        color = NA
      ),
      panel.grid.major = ggplot2::element_line(
        color = "#DDD9E0",
        linewidth = 0.4
      ),
      panel.grid.minor = ggplot2::element_blank(),
      plot.title = ggplot2::element_text(
        color = "#1E2933",
        face = "bold"
      ),
      plot.subtitle = ggplot2::element_text(
        color = "#4B5563"
      ),
      axis.title = ggplot2::element_text(
        color = "#1E2933"
      ),
      axis.text = ggplot2::element_text(
        color = "#4B5563"
      ),
      legend.text = ggplot2::element_text(
        color = "#4B5563"
      )
    )
}
