{
    home.file = {
    ".bin/shot-area-save" = {
      executable = true;
      text = ''
        #!/bin/bash
        file=~/Pictures/area-$(date +%Y%m%d-%H%M%S).png
        grim -g "$(slurp)" "$file" && \
        cat "$file" | wl-copy && \
        notify-send "Скриншот" "Область сохранена в: $(basename $file) и буфер"
      '';
    };
    
    ".bin/shot-window-save" = {
      executable = true;
      text = ''
        #!/bin/bash
        geometry=$(hyprctl -j activewindow | jq -r '"\(.at[0]),\(.at[1]) \(.size[0])x\(.size[1])"')
        file=~/Pictures/window-$(date +%Y%m%d-%H%M%S).png
        grim -g "$geometry" "$file" && \
        cat "$file" | wl-copy && \
        notify-send "Скриншот" "Окно сохранено в: $(basename $file) и буфер"
      '';
    };
  };
}