.onLoad <- function(libname, pkgname) {
  # Fetch Inter directly from Google Fonts and register it
  sysfonts::font_add_google(name = "Inter", family = "Inter")

  # Automatically enable showtext rendering for crisp text support
  showtext::showtext_auto()
}
