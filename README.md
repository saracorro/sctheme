# Custom Brand R Package

The **Custom Brand** package provides a standardized design system for data analysis and visualization. It includes a custom `ggplot2` theme and helper functions that make it easier to create consistent, professional, and accessible visualizations.

---

## Installation

You can install the development version of this package directly from GitHub using `devtools`:

```r
# Install devtools if you do not already have it
install.packages("devtools")

# Install the package from GitHub
devtools::install_github("saracorro/your-repo-name")
```

After installing the package, load it with:

```r
library(CustomBrand)
```

---

## Features & Functions

### 1. Data Wrangling Helper: `calculate_shares()`

The `calculate_shares()` function provides a quick way to summarize a categorical variable by calculating the number of observations and the percentage share of each category.

For example:

```r
library(CustomBrand)
library(dplyr)
library(palmerpenguins)

penguins %>%
  calculate_shares(species)
```

This produces a summary showing each penguin species, its count, and its percentage of the total observations.

---

### 2. Custom Visualization Theme: `theme_custom()`

The `theme_custom()` function provides a consistent visual style for `ggplot2` graphics. The theme uses a clean, minimalist design with an off-white background, subtle gridlines, and a clear title hierarchy.

Example:

```r
library(CustomBrand)
library(ggplot2)
library(palmerpenguins)

ggplot(
  penguins,
  aes(
    x = bill_length_mm,
    y = body_mass_g,
    color = species
  )
) +
  geom_point(size = 2.5, alpha = 0.8) +
  scale_color_manual(
    values = c(
      "#2B5C8F",
      "#E69F00",
      "#009E73"
    )
  ) +
  labs(
    title = "Penguin Bill Length vs. Body Mass",
    subtitle = "Styled with theme_custom()",
    x = "Bill Length (mm)",
    y = "Body Mass (g)",
    caption = "Data: palmerpenguins"
  ) +
  theme_custom()
```

The resulting visualization uses the package's custom branding while maintaining the functionality of `ggplot2`.

---

## Brand Design & Accessibility Justification

### Typography

The package uses **Inter** as its primary font. Inter was selected because it is a modern sans-serif typeface designed for readability across both digital and print applications.

The typography also establishes a clear visual hierarchy:

* **Bold headings** draw attention to important information.
* **Regular-weight body text** improves readability.
* **Dark text** provides strong contrast against the light background.

This creates a clean and consistent visual identity across different graphics.

### Color Palette

The package uses three primary accent colors:

| Color      | Hex Code  | Purpose                    |
| ---------- | --------- | -------------------------- |
| Slate Blue | `#2B5C8F` | Primary brand/accent color |
| Amber Gold | `#E69F00` | Secondary accent           |
| Teal Green | `#009E73` | Secondary accent           |

The palette was chosen to create visual distinction between categories while maintaining a professional and consistent appearance.

The primary blue, `#2B5C8F`, provides strong contrast against the package's light background, `#FAFAFA`, making it suitable for important visual elements.

### Background and Gridlines

The theme uses:

* **Off-white background:** `#FAFAFA`
* **Light gridlines:** `#E0E0E0`
* **Dark text:** `#111111`

The off-white background reduces the harshness of a pure white background while maintaining a clean appearance. The light gray gridlines provide useful reference points without competing with the data.

### Accessibility

Accessibility was considered when selecting the package's colors and typography.

The color palette was evaluated using color-contrast and color-blindness simulation tools. The blue, amber, and teal accents were selected because they provide meaningful visual differences between categories and are intended to remain distinguishable for users with common forms of color vision deficiency, including protanopia and deuteranopia.

Color is also not intended to be the only source of information in the visualizations. Clear labels, titles, axes, and legends provide additional ways for users to interpret the data.

Overall, the design aims to balance a consistent visual identity with readability, contrast, and accessibility.
