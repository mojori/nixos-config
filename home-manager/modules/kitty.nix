{config, pkgs, colors, ...}:
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
            background = colors.base00;
            foreground = colors.base05;
            color0 = colors.base00;
            color1 = colors.base08;
            color2 = colors.base0B;
            color3 = colors.base0A;
            color4 = colors.base0D;
            color5 = colors.base0E;
            color6 = colors.base0C;
            color7 = colors.base05;
            color8 = colors.base03;
            color9 = colors.base08;
            color10 = colors.base0B;
            color11 = colors.base0A;
            color12 = colors.base0D;
            color13 = colors.base0E;
            color14 = colors.base0C;
            color15 = colors.base07;

            extraConfig = ''
              enable_audio_bell no          
              visual_bell_duration 0.0
            '';
        };
    };
}