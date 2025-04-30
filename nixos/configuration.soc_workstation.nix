{ config, pkgs, ... }:

{
    networking.hostName = "soc_workstation"; # Define your hostname.
    services.xserver.xkb = {
        layout = "de";
        variant = "nodeadkeys";
    };
    console.keyMap = "de-latin1-nodeadkeys";
    nixpkgs.config.allowUnfree = true;
    nix.settings.experimental-features = [ "nix-command" "flakes" ];
    environment.systemPackages = with pkgs; [
    ];
    system.stateVersion = "24.11"; # Did you read the comment?
}
