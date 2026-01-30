{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        templ
        odin
    ];
}
