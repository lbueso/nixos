{ config, pkgs, ... }: {

  imports =
    [
      # general configuration files
      ./conf/boot.nix
      ./conf/network.nix
      ./conf/locale.nix
      ./conf/desktop.nix
      ./conf/users.nix
      ./conf/file-system.nix
      ./conf/hardware-configuration.nix
      # device specific configuration
      ./device/imports.nix
    ];

  # file systems
  environment.systemPackages = with pkgs; [
    parted
    wget
    zile
    xlibs.xmessage              # necessary for xmonad
  ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "20.03";

}
