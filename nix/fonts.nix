{pkgs, ... }:

{
  fonts.packages = with pkgs; [
    nerd-fonts.fira-code
    liberation_ttf
    jetbrains-mono
    iosevka-comfy.comfy
  ];

  fonts.fontconfig.enable = true;
}
