{ config, pkgs, ... }:

{
  security.wrappers.brightnessctl = {
	source = "${pkgs.brightnessctl}/bin/brightnessctl";
	setuid = true;
	owner = "root";
	group = "root";
};

}
