{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        legcord
        zoom-us
        signal-desktop
    ];
}
