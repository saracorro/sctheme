# sctheme

The **sctheme** package provides a custom visual style for data analysis and visualization. It includes a custom `ggplot2` theme and data-wrangling helper functions designed to create consistent, professional, and visually cohesive graphics.

---

## Installation

You can install the development version of this package directly from GitHub using `devtools`:

```r
# Install devtools if you do not already have it
install.packages("devtools")

# Install the package from GitHub
devtools::install_github("saracorro/sctheme")
```

After installing the package, load it with:

```r
library(sctheme)
```

---

## Features & Functions

### 1. Data Wrangling Helper: `calculate_shares()`

The `calculate_shares()` function provides a quick way to summarize a categorical variable by calculating the number of observations and the percentage share of each category.

For example:

```r
library(sctheme)
library(dplyr)
library(palmerpenguins)

penguins %>%
  calculate_shares(species)
```

This produces a summary showing each penguin species, its count, and its percentage of the total observations.

---

### 2. Custom Visualization Theme: `sctheme()`

The `sctheme()` function provides a consistent visual style for `ggplot2` graphics. The theme uses a clean, minimalist design with an off-white background, subtle gridlines, and a clear title hierarchy.

Example:

```r
library(sctheme)
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
  labs(
    title = "Penguin Bill Length vs. Body Mass",
    subtitle = "Styled with sctheme()",
    x = "Bill Length (mm)",
    y = "Body Mass (g)",
    caption = "Data: palmerpenguins"
  ) +
  sctheme()
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

| Color | Hex Code | Purpose |
|---|---|---|
| Blue | `#2B5C8F` | Primary brand color |
| Lavender | `#8C7AA9` | Secondary accent |
| Dusty Rose | `#C47C86` | Secondary accent |
| Off-white | `#F8F7F5` | Background |
| Dark Navy | `#1E2933` | Primary text |

The palette was chosen to create visual distinction between categories while maintaining a professional and consistent appearance.

The primary blue, `#2B5C8F`, provides strong contrast against the package's light background, `#F8F7F5`, making it suitable for important visual elements.

### Background and Gridlines

The theme uses a soft off-white background (#F8F7F5) to create a clean and comfortable visual appearance while avoiding the starkness of a pure white background. The background allows the primary blue (#2B5C8F), lavender (#8C7AA9), and dusty rose (#C47C86) accents to stand out clearly.

Gridlines use a light neutral color (#DDD9E0) and are kept subtle so they provide useful reference points without competing with the data. Minor gridlines are removed to reduce visual clutter and keep the overall design clean.

This combination creates a consistent visual hierarchy where the data remains the primary focus, while the background and gridlines provide structure without overwhelming the visualization.


### Accessibility

Accessibility was considered when developing the package's visual design. The palette uses distinct colors for visual differentiation while maintaining strong contrast between text and the light background.

Color is not intended to be the only source of information in visualizations. Titles, axis labels, legends, and other textual elements provide additional context so that information can still be interpreted without relying solely on color.
