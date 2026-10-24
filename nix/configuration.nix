# Fucking Awesome Kamui's NixOS Configuration

# <3 <( ^ w ^ )>


{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./pkgs.nix
      ./fonts.nix
      ./rc.1/doas
      ./rc.4/settings
      ./virtualmachine.nix
      ./disks.nix
      ./rc.5/x.nix
      ./rc.5/sound.nix
      ./rc.1/suid.nix
      ./ring0.nix
      ./networking-shenanigans.nix
      ./rc.4/hometown.nix
      ./rc.3/zram.nix
      ./rc.3/general-services.nix
    ];

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "en_CA.UTF-8";

nixpkgs.config = {
    allowUnfree = true;
};

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
};

environment.systemPackages = with pkgs; [
  wineWow64Packages.full
];
  
 system.stateVersion = "26.05";
 
}
