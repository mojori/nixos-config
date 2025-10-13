{ config, pkgs, ... }:

{
  programs.neofetch = {
    enable = true;
    
    # Кастомная цветовая схема
    settings = {
      # Цветовая палитра (можно использовать hex коды)
      colors = (pkgs.lib.splitString " " "4 4 4 4 7 7");
      # Или названия цветов:
      # colors = (pkgs.lib.splitString " " "blue blue blue blue white white");
      
      # Префиксы для цветов
      color_blocks = {
        #block = {
        #  colors = [ 
        #    "#bc5244" "#a9725e" "#6f322f" 
        #    "#6f6e6c" "#323f43" "#131b1b" 
        #  ];
        #};
        # Или использовать автоматическое определение
        block = "auto";
      };
      
      # Дополнительные настройки
      image_backend = "kitty";  # или "w3m", "iterm2", etc
      image_source = "~/nix/wallpapers/neofetch.png";  # кастомное изображение
    };
  };
}