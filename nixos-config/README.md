# My first NixOS config

 Installation:
```bash
git clone https://github.com/katharye/nixos-config
mv nixos-config $HOME/nix # Config is supposed to be in the ~/nix directory
cd $HOME/nix
sudo nixos-rebuild switch --flake .
home-manager switch --flake .
```