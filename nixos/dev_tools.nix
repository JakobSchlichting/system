{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        gnumake
        cmake
        gcc
        air
        go
        lld
        lldb
        btop
        vim
        wget
        git
        stow
        fastfetch
        fzf
        neovim
        kitty
        alacritty
        nodejs
        pnpm
        python3
        pandoc
    ];
} 
