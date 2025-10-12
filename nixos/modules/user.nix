{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.katharye = {
      isNormalUser = true;
      description = "Katharyn Etienne";
      extraGroups = [ "networkmanager" "wheel" "input" "plugdev" "audio" ];
      packages = with pkgs; [];
    };
  };

  # Enable automatic login for the user.
  services.getty.autologinUser = "katharye";
}
