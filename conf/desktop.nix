{ config, pkgs, ... }: {

  environment.systemPackages = with pkgs.haskellPackages; [
    xmobar
    xmonad
    xmonad-contrib
    xmonad-extras
  ];

  # sound
  sound.enable = true;
  hardware.pulseaudio.enable = true;
  # Enable the X11 windowing system.
  services.xserver = {
    enable     = true;
    # Enable touchpad support.
    libinput.enable = true;
    displayManager.lightdm.enable = true;
    windowManager.xmonad = {
      enable = true;
      enableContribAndExtras = true;
    };
  };

}
