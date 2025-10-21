{ config, lib, pkgs, ... }:


{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/bundle.nix
      ./packages.nix

    ];	

  time.timeZone = "Europe/Moscow"; #Set timezone
  
  ################################################################ 
  #programs.home-manager.enable = true;                          #
  #home-manager.users.mojori = import ../home-manager/home.nix;#
  ################################################################

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "25.05"; # Did you read the comment?

}

