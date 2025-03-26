{ inputs, pkgs, ... }:

{
    programs.hyprland.enable = true;
    environment.sessionVariables.NIXOS_OZONE_WL = "1";
    environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";
    environment.systemPackages = with pkgs; [
        hyprpicker
        hyprcursor
        hyprlock
        hypridle
        hyprpaper
        waybar
        wofi
        alacritty
# TODO: move the kde packages to a file manager file
        kdePackages.dolphin
        kdePackages.qtwayland
        kdePackages.qtsvg
        kdePackages.kio-fuse
        kdePackages.kio-extras
# TODO: move this to browsers
        brave
    ];
}
