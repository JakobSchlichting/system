{ pkgs, pkgs-unstable, ... }:

{
    environment.systemPackages = [
        pkgs-unstable.obsidian
        pkgs.onlyoffice-desktopeditors
    ];
}
