{ config, pkgs, ... }: {

  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus32";
    keyMap = "us";
  };

  time.timeZone = "Europe/Madrid";

}
