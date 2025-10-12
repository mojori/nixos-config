{ config, pkgs, ... }:

{
  programs.wofi = {
    enable = true;
    
    settings = {
      width = 800;
      height = 500;
      location = "center";
      show = "drun";
      prompt = " ";
      insensitve = true;
    };
    
    style = ''
      * {
        font: "FiraCode Nerd Font 12";
      }
      
      window {
        margin: 0px;
        border: 2px solid #458588;
        border-radius: 8px;
        background-color: #1d2021;
      }
      
      #input {
        margin: 10px;
        padding: 10px;
        border: none;
        border-radius: 4px;
        color: #ebdbb2;
        background-color: #3c3836;
      }
      
      #inner-box {
        margin: 0px 10px 10px 10px;
        border: none;
        background-color: transparent;
      }
      
      #entry {
        padding: 8px;
        border: none;
        border-radius: 4px;
        color: #ebdbb2;
        background-color: transparent;
      }
      
      #entry:selected {
        background-color: #458588;
      }
    '';
  };
}