{ pkgs,  ... }:

{
# Bootloader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
    boot.loader.timeout = 2;
    boot.initrd.enable = true;
    boot.initrd.systemd.enable = true;
    boot.initrd.luks.devices."luks-3548dfcb-2ed1-4e01-a573-6a36a5f0044c".device = "/dev/disk/by-uuid/3548dfcb-2ed1-4e01-a573-6a36a5f0044c";
    boot.consoleLogLevel = 3;
    boot.plymouth = {
        enable = true;
        font = "${pkgs.jetbrains-mono}/share/fonts/truetype/JetBrainsMono-Regular.ttf";
        themePackages = [ pkgs.catppuccin-plymouth ];
        theme = "catppuccin-macchiato";
    };
}
