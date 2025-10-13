{ config, pkgs, ... }:

let
  myDarkColors = {
    background = "26,26,26";
    foreground = "239,240,241";
    accent = "61,174,233";
    selection = "41,128,185";
  };
in {
  home.packages = with pkgs; [
    dolphin
    kdePackages.dolphin
  ];

  qt.enable = true;
  qt.platformTheme = "kde";

  xdg.configFile."kdeglobals".text = ''
    [General]
    ColorScheme=MyDarkTheme
    name=My Dark Theme
    widgetStyle=Breeze

    [KDE]
    ColorScheme=MyDarkTheme

    [Icons]
    Theme=breeze-dark

    [Colors:View]
    BackgroundNormal=${myDarkColors.background}
    BackgroundAlternate=35,35,35
    ForegroundNormal=${myDarkColors.foreground}
    ForegroundInactive=127,140,141
    DecorationFocus=${myDarkColors.accent}
    DecorationHover=${myDarkColors.accent}

    [Colors:Window]
    BackgroundNormal=35,35,35
    ForegroundNormal=${myDarkColors.foreground}

    [Colors:Button]
    BackgroundNormal=49,54,59
    BackgroundAlternate=42,46,50
    ForegroundNormal=${myDarkColors.foreground}

    [Colors:Selection]
    BackgroundNormal=${myDarkColors.accent}
    BackgroundAlternate=${myDarkColors.selection}
    ForegroundNormal=${myDarkColors.foreground}

    [Colors:Tooltip]
    BackgroundNormal=49,54,59
    ForegroundNormal=${myDarkColors.foreground}

    [Colors:Complementary]
    BackgroundNormal=42,46,50
    ForegroundNormal=${myDarkColors.foreground}
  '';
}
