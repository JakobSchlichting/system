{ pkgs-unstable, ... }:

{
    environment.systemPackages = with pkgs-unstable; [
        code-cursor
    ];
}
