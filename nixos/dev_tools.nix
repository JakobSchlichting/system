{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        gnumake
        cmake
        gcc
        lld
        lldb
        btop
    ];
} 
