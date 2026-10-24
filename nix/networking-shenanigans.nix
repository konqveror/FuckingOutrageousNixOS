{ config, lib, pkgs, ... }:

{
    networking.hostName = "puellamagi"; 
    networking.networkmanager.enable = true;

    services.openssh.enable = true;
    systemd.services.ModemManager.enable = false;

  networking.firewall.allowedTCPPorts = [ 8000 2121 67 ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # networking.firewall.enable = false;

}

