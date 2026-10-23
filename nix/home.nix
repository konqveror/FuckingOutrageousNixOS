{ config, pkgs, ... }:

{
  home.username = "momoko";
  home.homeDirectory = "/home/momoko";
  home.stateVersion = "26.05";
#  programs.bash.enable = true;
  
  home.packages = with pkgs; [
    rescrobbled
    xarchiver
    helix
    xfce4-whiskermenu-plugin
];
  
  systemd.user.services.qwired = {
    Unit = {
      Description = "set pipewire quantum thing to 2048 without depending on messy config files (login)";
    };

    Service = {
      Type = "oneshot";
      ExecStart = "${pkgs.bash}/bin/bash -c 'pw-metadata -n settings 0 clock.force-quantum 2048'";
      RemainAfterExit = true;
    };
    Install = {
      WantedBy = [ "default.target" ];
    };

  };

}

