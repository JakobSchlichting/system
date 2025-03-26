{ config, pkgs, ... }:

{
    imports = [ # Include the results of the hardware scan.
        ./hardware_configuration.nix
    ];
    networking.hostName = "soc_workstation"; # Define your hostname.
    services.xserver.xkb = {
        layout = "de";
        variant = "nodeadkeys";
    };
    console.keyMap = "de-latin1-nodeadkeys";
    users.users.soc = {
        isNormalUser = true;
        description = "SOC Analyst";
        extraGroups = [ "networkmanager" "wheel" ];
        packages = with pkgs; [];
    };
    nixpkgs.config.allowUnfree = true;
    nix.settings.experimental-features = [ "nix-command" "flakes" ];
    environment.systemPackages = with pkgs; [
        vim
        wget
        git
        stow
        fastfetch
        neovim
        kitty
        alacritty
    ];
    system.stateVersion = "24.11"; # Did you read the comment?
}
