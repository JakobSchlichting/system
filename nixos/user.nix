{ config, pkgs, ... }:

{
    users.users = {
        soc = {
            isNormalUser = true;
            description = "SOC Analyst";
            extraGroups = [ "networkmanager" "wheel" ];
            packages = with pkgs; [];
        };
    };
}
