{ config, pkgs, ... }:

{
    users.users = {
        js = {
            isNormalUser = true;
            description = "Jakob Schlichting";
            extraGroups = [ "networkmanager" "wheel" ];
            packages = with pkgs; [];
        };
    };
}
