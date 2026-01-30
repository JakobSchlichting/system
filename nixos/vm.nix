{ config, inputs, pkgs, ... }:

{
    users.groups.libvirtd.members = ["js"];
    networking = {
        bridges = {
            br_vm_iso_1.interfaces = [];
        };
    };
    networking.firewall.extraCommands = ''
        iptables -A INPUT -i br_vm_iso_1 -j DROP
        iptables -A FORWARD -i br_vm_iso_1 -j DROP
    '';
    virtualisation.libvirtd = {
        enable = true;
        qemu = {
            runAsRoot = false;
            swtpm.enable = true;
        };
    };
    virtualisation.spiceUSBRedirection.enable = true;
    programs.virt-manager.enable = true;
    environment.systemPackages = with pkgs; [
        bridge-utils
    ];
}
