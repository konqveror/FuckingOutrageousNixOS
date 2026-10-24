{ config, lib, pkgs, ... }:

{

  systemd.oomd = {
  enable = true;
  enableRootSlice = true;
  enableUserSlices = true;
};

}
