#' Set default fonts and set theme_dk() to be used in all plots
#'
#' @param base_font Inter Tight by default
set_dk_defaults <- function(base_font = "Inter Tight") {
  ggplot2::update_geom_defaults(
    geom = "text",
    ggplot2::aes(
      family = base_font,
      color = "grey30"
    )
  )

  ggplot2::update_geom_defaults(
    geom = "label",
    ggplot2::aes(
      family = base_font,
      color = "grey30"
    )
  )

  ggplot2::theme_set(theme_dk())
}

#' David Keyes's personal theme
#'
#' @param base_family Inter Tight by default
#' @param base_size 14 by default
theme_dk <- function(base_family = "Inter Tight", base_size = 14) {
  theme_dk <-
    ggplot2::theme_minimal(
      base_size = base_size,
      base_family = base_family
    ) +
    ggplot2::theme(
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(
        color = "grey90",
        linewidth = 0.5,
        linetype = "dashed"
      ),
      axis.ticks = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(
        color = "grey50",
        size = ggplot2::rel(0.8)
      ),
      axis.title = ggplot2::element_blank(),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(
        face = "bold",
        size = ggplot2::rel(1.5)
      ),
      plot.subtitle = ggplot2::element_text(
        color = "grey40",
        size = ggplot2::rel(1.1)
      ),
      plot.caption = ggplot2::element_text(
        color = "grey50",
        margin = ggplot2::margin(t = 20)
        # hjust = 0
      ),
      plot.margin = ggplot2::margin(10, 10, 10, 10),
      strip.text = ggplot2::element_text(
        color = "grey40",
        hjust = 0,
        size = ggplot2::rel(0.9)
      ),
      panel.spacing = ggplot2::unit(2, "lines")
    )

  theme_dk
}

# library(tidyverse)
# library(palmerpenguins)
#
# set_dk_defaults()
#
# penguins |>
#   ggplot(
#     aes(
#       bill_length_mm,
#       bill_depth_mm
#     )
#   ) +
#   geom_point() +
#   labs(
#     title = "A penguins plot as an example",
#     subtitle = "And here is the subtitle",
#     caption = "And here is the caption"
#   ) +
#   theme_dk() +
#   facet_wrap(vars(island))
#
# penguins |>
#   count(species, island) |>
#   ggplot(
#     aes(
#       species,
#       n
#     )
#   ) +
#   geom_col() +
#   geom_text(aes(label = species),
#     vjust = -1
#   ) +
#   labs(
#     title = "A penguins plot as an example",
#     subtitle = "And here is the subtitle",
#     caption = "And here is the caption"
#   ) +
#   theme_dk() +
#   facet_wrap(vars(island))
