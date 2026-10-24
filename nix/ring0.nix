{ config, lib, pkgs, ... }:

{
  boot.kernelModules = [ "kvm-amd" ];
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda"; 
  boot.supportedFilesystems = [ "btrfs" ];
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.loader.grub.configurationLimit = 3;

  boot.kernel.sysctl = {
  "vm.swappiness" = 150;
  "vm.watermark_boost_factor" = 0;
};

}
