{ config, pkgs, ... }: {
  home = {
    username = "mojori";
    homeDirectory = "/home/mojori";
    stateVersion = "25.05";
  };
  
  imports = [
    ./modules
  # ./zsh.nix
  ];

}
