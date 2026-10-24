# NixOS Files.

![NixOS](https://img.shields.io/badge/NixOS-5277C3?logo=nixos&logoColor=white)
![Home Manager](https://img.shields.io/badge/Home%20Manager-blue?logo=homeadvisor&logoColor=white) ![Flakes](https://img.shields.io/badge/Flakes-5E81AC?logo=nixos&logoColor=white)

### Minimal and reproducible configuration for NixOS (Flakes, Home Manager and extras)

This repository contains my personal system config and files. (almost) Everything is managed declaratively, so it's pretty reproducible through machines and stuff.

# Stats:

OS: NixOS, Stable 26.05 (Yarara)
Architecture: Flakes-based
User thing: Home Manager
Shell: KornShell93

# Struct:

```FuckingOutrageousNixOS
├── configuration.nix
├── disks.nix
├── flake.lock
├── flake.nix
├── fonts.nix
├── hardware-configuration.nix
├── home.nix
├── networking-shenanigans.nix
├── pkgs.nix
├── rc.1
│   ├── doas
│   └── suid.nix
├── rc.3
│   ├── general-services.nix
│   └── zram.nix
├── rc.4
│   ├── customs
│   ├── hometown.nix
│   └── settings
├── rc.5
│   ├── sound.nix
│   └── x.nix
├── ring0.nix
└── virtualmachine.nix
```

### That's all.

	 ⢠⣶⣤⣄⢠⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣦⢀⣤⣴⣦
	 ⠀⠉⠛⠿⠷⣯⣿⣿⣶⡀⠀⢀⣠⣤⣀⠀⠀⣠⣾⣿⣫⡷⠿⠿⠋⠁
	⠀⠀⠐⢿⡷⠶⠮⠭⢸⡇⢠⣿⣿⣿⣿⣧⠀⣿⡯⠭⠷⠶⣿⠗⠀⠀
	⠀⠀⠀⠀⠀⠛⠛⢛⡺⣧⠈⢿⣿⣿⣿⠏⢠⡿⣛⡛⠛⠃⠀⠀⠀⠀
	⠀⠀⠀⠀⠀⠀⠀⠉⠁⠈⠀⠀⠈⠉⠀⠀⠈⠀⠉⠁⠀⠀⠀⠀⠀⠀
	⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	⠀⠀⠀⠀⠀⠀⠀⠀⣰⣧⡀⠀⠀⠀⠀⠀⢀⣼⣆⠀⠀⠀⠀⠀⠀⠀
	⠀⠀⠀⠀⠀⠀⠀⠘⠛⠛⠓⠀⠀⠀⠀⠀⠚⠛⠛⠃⠀⠀⠀⠀⠀⠀
	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣤⣤⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠿⠃


<img width="1366" height="768" alt="bigshot" src="https://github.com/user-attachments/assets/cb8739db-6c93-4d1f-bb76-1df94c1c56b2" />
