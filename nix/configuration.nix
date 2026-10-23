# Fucking Awesome Kamui's NixOS Configuration

# <3 <( ^ w ^ )>


{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
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
    ];

  boot.kernelModules = [ "kvm-amd" ];
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda"; 
  boot.supportedFilesystems = [ "btrfs" ];
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.loader.grub.configurationLimit = 3;

  networking.hostName = "puellamagi"; 
  networking.networkmanager.enable = true;

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "en_CA.UTF-8";

  users.users.momoko = {
     isNormalUser = true;
     extraGroups = [ "wheel" "audio" "video" "networkmanager" "input" "kvm" "libvirtd" ]; # Enable ‘sudo’ for the user.
     initialPassword = "";
   };

users.users.momoko.shell = pkgs.ksh;

nixpkgs.config = {
    allowUnfree = true;
};

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
};

zramSwap = {
  enable = true;
  algorithm = "zstd";
  memoryPercent = 100;
  priority = 100;
};

boot.kernel.sysctl = {
  "vm.swappiness" = 150;
  "vm.watermark_boost_factor" = 0;
};

systemd.oomd = {
  enable = true;
  enableRootSlice = true;
  enableUserSlices = true;
};

systemd.services.ModemManager.enable = false;

environment.systemPackages = with pkgs; [
  wineWow64Packages.full
];


  services.openssh.enable = true;

  networking.firewall.allowedTCPPorts = [ 8000 2121 67 ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # networking.firewall.enable = false;
  
 system.stateVersion = "26.05";  
 
 home-manager.users.momoko = import ./home.nix;
 home-manager.useGlobalPkgs = true;
 home-manager.useUserPackages = true;

}
