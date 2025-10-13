{ config, pkgs, ...}:
{
    services.mako = {
        enable = true;

        settings = {
            #style 
            background-color = "#383c4a";
            border-color = "#7c818c";
            border-radius = 10;
            border-size = 2;
            progress-color = "over #5e5f66";
            text-color = "#ffffff";

            #size
            width = 300;
            height = 120;
            margin = "20";
            padding = "20";

            default-timeout = 5000;
            anchor = "top-right";
            font = "JetBrains Mono Nerd Font 12";

            format = "<b>%s</b>\\n%b";
            max-icon-size = 64;

            group-by = "app-name,summary";
            sort = "-time";
        };
    };
}