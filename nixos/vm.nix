{ config, inputs, pkgs, ... }:

{
# nixpkgs.config.allowUnfree = true;
# virtualisation.virtualbox.host.enable = true;
# virtualisation.virtualbox.host.enableExtensionPack = true;
# users.extraGroups.vboxusers.members = [ "js" ];
    users.groups.libvirtd.members = ["js"];
    virtualisation.libvirtd.enable = true;
    virtualisation.spiceUSBRedirection.enable = true;
    programs.virt-manager.enable = true;

    networking = {
# --- Bridge for the Physical 10.x.x.x LAN segment ---
        bridges.br_physical_lan = {
# Add the DEDICATED physical Ethernet port to this bridge
            interfaces = [ "enp0s31f6" ]; # !!! IMPORTANT: Replace "eno2" with YOUR dedicated physical NIC !!!
        };

# The br_physical_lan bridge itself on the NixOS host does NOT need an IP.
# Sophos will be the gateway for the 10.x.x.x network.
# If the NixOS host *itself* needed to be a client on the 10.0.0.0/8 network
# via this bridge, you could enable DHCP for br_physical_lan here to get an IP from Sophos.
        interfaces.br_physical_lan.ipv4.addresses = [
            { address = "10.0.0.2"; prefixLength = 8; }
        ];

# Ensure the dedicated physical interface (eno2) itself doesn't try to get an IP,
# as it's now part of the bridge.
        interfaces.enp0s31f6 = { # !!! IMPORTANT: Replace "eno2" with YOUR dedicated physical NIC !!!
            useDHCP = false; # Explicitly disable DHCP on the physical NIC
# Any static IP configuration for eno2 should also be removed.
        };

# Firewall settings (example, adjust as needed)
        firewall = {
            enable = true; # Assuming you want a host firewall
# For the physical LAN bridge, you likely want to allow all traffic
# as Sophos will be the firewall for that segment.
# Adding it to trustedInterfaces is one way.
                trustedInterfaces = [ "br_physical_lan" ];
# Alternatively, be more specific if needed, but generally, for a dedicated segment
# managed by another firewall (Sophos), trusting the bridge on the host is common.
        };
    };
    environment.systemPackages = with pkgs; [
        bridge-utils
    ];
}
