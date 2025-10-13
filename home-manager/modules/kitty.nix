{config, pkgs, ...}:

{
    programs.kitty = {
        enable = true;

        settings = {
            #close window without confirmation
            confirm_os_window_close = 0;

            #fonts 
            font_family = "JetBrains Mono Nerd Font";
            font_size = 12;
            bold_font = "auto";
            italic_font = "auto";
            bold_italic_font = "auto";

            #scrolling 
            scrollback_lines = 10000;
            wheel_scroll_multiplier = 5.0;
            
            window_margin_width = 5;
            background = "#1a1b20";

            extraConfig = ''
              enable_audio_bell no          
              visual_bell_duration 0.0
            '';
        };
    };
}