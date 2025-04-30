{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        gnumake
        cmake
        gcc
        lld
        lldb
        btop
        vim
        wget
        git
        stow
        fastfetch
        neovim
        kitty
        alacritty
    ];
} 
