theme_twitter <- function(){
  ggplot2::theme(
    title = ggplot2::element_text(family = "Helvetica"),
    text = ggplot2::element_text(family = "Helvetica", size = 12),
    axis.text = ggplot2::element_text(size = 10),
    axis.title = ggplot2::element_text(size = 10),
    plot.title = ggplot2::element_text(
      hjust = 0,
      face = "bold",
      size = 16
    ),
    plot.subtitle = ggplot2::element_text(size = 16),
    plot.caption = ggplot2::element_text(size = 10, face = "italic"),
    panel.background = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_line(
      size = 0.4,
      color = "grey",
      linetype = "dashed"
    ),
    legend.title = ggplot2::element_text(face = "bold", size = 11),
    # strip.background = element_rect(fill = "#657786"),
    strip.background = ggplot2::element_rect(fill = "#005FD1"),
    strip.text = ggplot2::element_text(colour = "white", size = 11, face = "bold")
  )
}