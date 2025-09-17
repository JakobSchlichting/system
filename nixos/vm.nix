{ config, inputs, pkgs, ... }:

{
    users.groups.libvirtd.members = ["js"];
    virtualisation.libvirtd = {
        enable = true;
        qemu = {
            runAsRoot = false;
        };
    };
    virtualisation.spiceUSBRedirection.enable = true;
    programs.virt-manager.enable = true;
    environment.systemPackages = with pkgs; [
        bridge-utils
    ];
}
