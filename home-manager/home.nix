{ config, pkgs, ... }: {
  home = {
    username = "katharye";
    homeDirectory = "/home/katharye";
    stateVersion = "25.05";
  };
	
  imports = [
    ./modules
  ];

	programs.bash = {
		enable = true;
		shellAliases = {
			btw = "echo i suck big dicks btw";
			".." = "cd ..";
			nrs = "sudo nixos-rebuild switch";
			hms = "home-manager switch --flake /home/katharye/nix/";
		};
		
		initExtra = ''
			export PS1='\[\e[38;5;176;3m\]\u\[\e[0m\] in \[\e[1m\]\w\[\e[0m\] \\$ '
		'';
	};

	home.packages = with pkgs; [
		bat
	];
}
