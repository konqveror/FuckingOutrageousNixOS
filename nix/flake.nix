{
  description = "kamui's fuckingawesome snowflake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, unstable, home-manager, ... }@inputs: {
    nixosConfigurations = {
      puellamagi = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
      modules = [
        ./configuration.nix
        home-manager.nixosModules.home-manager
        {
          nixpkgs.overlays = [
            (final: prev: {
              unstable = import unstable {
              system = final.system;
              config.allowUnfree = true;
            };
          })
         ];
        }
       ];
      };
     };
   };
}
