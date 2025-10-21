{ pkgs, ... }: {
  # programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.bash;

    users.mojori = {
      isNormalUser = true;
      description = "Katharyn Etienne";
      extraGroups = [ "networkmanager" "wheel" "input" "plugdev" "audio" ];
      packages = with pkgs; [];
    };
  };

  # Enable automatic login for the user.
  services.getty.autologinUser = "mojori";
}
