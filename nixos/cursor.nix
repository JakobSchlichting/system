{ pkgs, pkgs-unstable, ... }:

{
    environment.systemPackages =  [
        pkgs-unstable.code-cursor
        pkgs-unstable.opencode
        pkgs.lmstudio
    ];
}
