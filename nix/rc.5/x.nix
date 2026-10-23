{ config, lib, pkgs, ... }:

{
    services.xserver = {
    enable = true;
    desktopManager.xfce.enable = true;
    displayManager.lightdm.enable = true;
};
   services.logind.settings.Login = {
     HandleLidSwitch = "suspend";
     HandleLidSwitchExternalPower = "suspend";
}; 

}
