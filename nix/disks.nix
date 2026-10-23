{ pkgs, ... }:

{
  systemd.services.disable-apm = {
  description = "disable apm";
  wantedBy = [ "multi-user.target" ];
  after = [ "multi-user.target" ];
  script = ''
    ${pkgs.hdparm}/bin/hdparm -B 255 /dev/sda
  '';
  serviceConfig = {
    Type = "oneshot";
    RemainAfterExit = true;
    
    };
  };
}
