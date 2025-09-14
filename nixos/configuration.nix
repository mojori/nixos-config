{ config, lib, pkgs, ... }:


{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/bundle.nix
      ./packages.nix

    ];	

  time.timeZone = "Europe/Moscow"; #Set timezone

  # Enable the X11 windowing system.
  # services.xserver.enable = true;
  # Enable the GNOME Desktop Environment.
  # services.xserver.displayManager.gdm.enable = true;
  # services.xserver.desktopManager.gnome.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
   users.users.katharye = {
     isNormalUser = true;
     extraGroups = [ "wheel" "input" "networkmanager" ]; # Enable ‘sudo’ for the user.
     packages = with pkgs; [
       tree
     ];
   };
  
  ################################################################ 
  #programs.home-manager.enable = true;                          #
  #home-manager.users.katharye = import ../home-manager/home.nix;#
  ################################################################

  networking.networkmanager.enable = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "25.05"; # Did you read the comment?

}

