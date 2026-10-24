# Fucking OUTRAGEOUS User Management.. heh...

{ config, lib, pkgs, ... }:

{

users.users.momoko = {
     isNormalUser = true;
     extraGroups = [ "wheel" "audio" "video" "networkmanager" "input" "kvm" "libvirtd" ];
     initialPassword = "";
};
   
 users.users.momoko.shell = pkgs.ksh;

 home-manager.users.momoko = import ../home.nix;
 home-manager.useGlobalPkgs = true;
 home-manager.useUserPackages = true;  

}
