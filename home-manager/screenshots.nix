{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings.bind = [
    "SHIFT, PRINT, exec, $HOME/.local/bin/shot-area-save"
    "SUPER, PRINT, exec, $HOME/.local/bin/shot-window-save"
    "PRINT, exec, $HOME/.local/bin/shot-full-save"
  ];

  home.packages = with pkgs; [
    grim
    slurp
    wl-copy
    jq
    libnotify
  ];

  # Создаем скрипты с правильным шебангом
  home.file = {
    ".local/bin/shot-area-save" = {
      executable = true;
      text = ''
        #!/usr/bin/env bash
        file="$HOME/Pictures/area-$(date +%Y%m%d-%H%M%S).png"
        grim -g "$(slurp)" "$file" && \
        cat "$file" | wl-copy && \
        notify-send "Скриншот" "Область сохранена в файл и буфер"
      '';
    };
    
    ".local/bin/shot-window-save" = {
      executable = true;
      text = ''
        #!/usr/bin/env bash
        geometry=$(hyprctl -j activewindow | jq -r '"\(.at[0]),\(.at[1]) \(.size[0])x\(.size[1])"')
        file="$HOME/Pictures/window-$(date +%Y%m%d-%H%M%S).png"
        grim -g "$geometry" "$file" && \
        cat "$file" | wl-copy && \
        notify-send "Скриншот" "Окно сохранено в файл и буфер"
      '';
    };
    
    ".local/bin/shot-full-save" = {
      executable = true;
      text = ''
        #!/usr/bin/env bash
        file="$HOME/Pictures/full-$(date +%Y%m%d-%H%M%S).png"
        grim "$file" && \
        cat "$file" | wl-copy && \
        notify-send "Скриншот" "Экран сохранен в файл и буфер"
      '';
    };
  };
}