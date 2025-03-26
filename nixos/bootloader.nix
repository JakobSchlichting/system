{ pkgs,  ... }:

{
# Bootloader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
    boot.loader.timeout = 2;
    boot.initrd.enable = true;
    boot.initrd.systemd.enable = true;
    boot.initrd.luks.devices."luks-91e451a0-2f16-4940-9c88-bd4b8c587b8c".device = "/dev/disk/by-uuid/91e451a0-2f16-4940-9c88-bd4b8c587b8c";
    boot.consoleLogLevel = 3;
    boot.plymouth = {
        enable = true;
        font = "${pkgs.jetbrains-mono}/share/fonts/truetype/JetBrainsMono-Regular.ttf";
        themePackages = [ pkgs.catppuccin-plymouth ];
        theme = "catppuccin-macchiato";
    };
}
