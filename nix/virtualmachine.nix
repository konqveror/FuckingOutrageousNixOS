{ config, pkgs, ... }:

{
  programs.dconf.enable = true;

  programs.virt-manager.enable = true;

  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      package = pkgs.qemu;
   };
 };

 virtualisation.spiceUSBRedirection.enable = true;
 services.spice-vdagentd.enable = true;

}
