{ config, lib, pkgs, ... }:

{
     services.pipewire = {
     enable = true;
     pulse.enable = true;
     alsa.enable = true;
     alsa.support32Bit = true;
     extraConfig.pipewire."99-quantum" = {
       "context.properties" = {
	 "default.clock.rate" = 48000;
         "default.clock.quantum" = 2048;
         "default.clock.min-quantum" = 2048;
         "default.clock.max-quantum" = 2048;
	};
   };
};

}
