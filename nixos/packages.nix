{ pkgs, pkgs-stable, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    chromium
    ayugram-desktop 
    kitty
    rofi
    mpv
    libreoffice
    discord 

    # Codding stuff
    clang-tools
    gnumake
    gcc
    SDL2
    SDL2.dev
    pkg-config
    python
    (python3.withPackages (ps: with ps; [
      requests
      beautifulsoup4
    ]))

    # CLI utils
    bat
    vim
    vscode
    neofetch
    file
    tree 
    wget
    git 
    fastfetch
    htop
    nix-index
    unzip
    scrot
    light
    lux
    mediainfo
    ranger
    zram-generator
    cava
    zip
    ntfs3g
    brightnessctl
    swww
    lazygit
    bluez
    bluez-tools

    # GUI utils
    feh
    imv
    dmenu
    mako

    # Wayland stuff
    xwayland
    wl-clipboard
    cliphist

    # WMs and stuff
    hyprland
    seatd
    xdg-desktop-portal-hyprland
    polybar
    waybar

    # Sound
    pipewire
    pulseaudio
    pamixer

    # GPU stuff
    intel-media-driver
    intel-ocl
    
    # Screenshotting
    grim
    grimblast
    slurp
    #frameshot
    swappy

    # Other
    amnezia-vpn
    home-manager
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
    papirus-nord
  ];
  
  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    nerd-fonts.symbols-only 
  ];
}

