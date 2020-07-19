{ config, pkgs, ... }: {

  users.users.luis = {
    isNormalUser = true;
    extraGroups = [ "wheel" "video" ]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
  };

}
