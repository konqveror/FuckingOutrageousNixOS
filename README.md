# NixOS Files.

### Minimal and reproducible configuration for NixOS (Flakes, Home Manager and extras)

This repository contains my personal system config and files. (almost) Everything is managed declaratively, so it's pretty reproducible through machines and stuff.

# Stats:

OS: NixOS, Stable 26.05 (Yarara)
Architecture: Flakes-based
User thing: Home Manager
Shell: KornShell93

# Struct:

```FuckingOutrageousNixOS
├── nix
│   ├── configuration.nix
│   ├── flake.lock
│   ├── flake.nix
│   ├── fonts.nix
│   ├── hardware-configuration.nix
│   ├── home.nix
│   ├── pkgs.nix
│   ├── rc.1
│   │   └── doas
│   └── rc.4
│       ├── customs
│       └── settings
└── README.md
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


