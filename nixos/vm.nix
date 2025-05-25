{ config, inputs, pkgs, ... }:

{
    programs.virt-manager.enable = true;
    users.groups.libvirtd.members = ["js"];
    virtualisation.libvirtd.enable = true;
    virtualisation.spiceUSBRedirection.enable = true;
}
