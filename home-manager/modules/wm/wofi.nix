{ config, pkgs, ... }:

{
  programs.wofi = {
    enable = true;
    
    settings = {
      width = 800;
      height = 500;
      location = "center";
      show = "drun";
      prompt = "";
      insensitive = true;
      show_images = true;
      image_size = 24;
    };
    
    style = ''
      * {
        font-family: "JetBrains Mono";
        font-size: 18px;
      }
      
      window {
        margin: 0px;
        border: 2px solid #7c818c;
        border-radius: 10px;
        background-color: #17181c;
      }
      
      #input {
        margin: 10px;
        padding: 10px;
        border: 2px solid #7c818c;
        border-radius: 10px;
        color: #7c818c;
        background-color: #17181c;
      }
      
      #inner-box {
        margin: 10px;
        border: none;
        border-radius: 10px;
        background-color: transparent;
      }
      
      #entry {
        margin: 10px;
        padding: 10px;
        border: none;
        border-radius: 10px;
        color: #7c818c;
        background-color: transparent;
      }
      
      #entry:selected {
        background-color: #383c4a;
      }

      #scroll {
        margin: 5px;
        border: none;
        border-radius: 12px;
        background-color: #1a1b20;
      }

      #scroll:hover {
        border: none;
        border-radius: 12px;
        background-color: #1a1b20;
      }
    '';
  };
}