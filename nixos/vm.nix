{ config, inputs, pkgs, ... }:

{
    users.groups.libvirtd.members = ["js"];
    virtualisation.libvirtd.enable = true;
    virtualisation.spiceUSBRedirection.enable = true;
    programs.virt-manager.enable = true;

    networking = {
        bridges.br_physical_lan = {};
    };

    firewall = {
        enable = true; # Assuming you want a host firewall
        trustedInterfaces = [ "br_physical_lan" ];
    };
    environment.systemPackages = with pkgs; [
        bridge-utils
    ];
}
