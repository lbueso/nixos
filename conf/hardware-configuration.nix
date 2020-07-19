{ config, pkgs, ... }: {

  hardware.bluetooth = {
    enable = true;
    config = {
      General = {
        Enable = "Source,Sink,Media,Socket";
      };
    };
  };

  services.blueman.enable = true;

  hardware.pulseaudio = {
    enable = true;
    support32Bit = true;
    package = pkgs.pulseaudioFull;
    extraModules = [ pkgs.pulseaudio-modules-bt ];
    extraConfig = ''
      load-module module-switch-on-connect
    '';
  };

}
