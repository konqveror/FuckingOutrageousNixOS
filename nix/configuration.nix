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
    ];

  boot.kernelModules = [ "kvm-amd" ];
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda"; 
  boot.supportedFilesystems = [ "btrfs" ];
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.loader.grub.configurationLimit = 3;

  security.wrappers.brightnessctl = {
	source = "${pkgs.brightnessctl}/bin/brightnessctl";
	setuid = true;
	owner = "root";
	group = "root";
};
  networking.hostName = "puellamagi"; 
  networking.networkmanager.enable = true;

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "en_CA.UTF-8";

  services.xserver = {
    enable = true;
    desktopManager.xfce.enable = true;
    displayManager.lightdm.enable = true;
};
   services.logind.settings.Login = {
     HandleLidSwitch = "suspend";
     HandleLidSwitchExternalPower = "suspend";
}; 


   services.pipewire = {
     enable = true;
     pulse.enable = true;
     alsa.enable = true;
     alsa.support32Bit = true;
     extraConfig.pipewire."99-quantum" = {
       "context.properties" = {
	 "default.clock.rate" = 48000;
         "default.clock.quantum" = 2048;
         "default.clock.min-quantum" = 2048;
         "default.clock.max-quantum" = 2048;
	};
   };
};

  users.users.momoko = {
     isNormalUser = true;
     extraGroups = [ "wheel" "audio" "video" "networkmanager" "input" "kvm"]; # Enable ‘sudo’ for the user.
     initialPassword = "";
   };

users.users.momoko.shell = pkgs.ksh;

nixpkgs.config = {
    allowUnfree = true;
};

  programs.firefox.enable = true;
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
  steam-run
];


  services.openssh.enable = true;

  networking.firewall.allowedTCPPorts = [ 8000 2121 67 ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  #networking.firewall.enable = false;
  
 system.stateVersion = "26.05";  
 
 home-manager.users.momoko = import ./home.nix;
 home-manager.useGlobalPkgs = true;
 home-manager.useUserPackages = true;

}
