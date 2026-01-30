{ pkgs, ... }:

{
# USB Automounting
    services.gvfs.enable = true;
# services.udisks2.enable = true;
# services.devmon.enable = true;

# Enable USB Guard
    services.usbguard = {
        enable = true;
        dbus.enable = true;
        implicitPolicyTarget = "block";
# INFO: set yours pref USB devices (change {id} to your trusted USB device), use `lsusb` command (from usbutils package) to get list of all connected USB devices including integrated devices like camera, bluetooth, wifi, etc. with their IDs or just disable `usbguard`
        rules = ''
            allow id 1d6b:0002
            allow id 1d6b:0003
            allow id 1d6b:0002
            allow id 27c6:6594
            allow id 5986:118c
            allow id 05ac:026c
            allow id 05ac:0265
            allow id 05e3:0626
            allow id 05e3:0626
            allow id 046d:085e
            allow id 1d6b:0002
            allow id 5986:118c
            allow id 05e3:0610
            allow id 8087:0033
            allow id 25a4:9311
            allow id 05e3:0610
            allow id 0951:16df
            allow id 1e7d:2e4a
            allow id 1b1c:1bad
            allow id 27c6:6594
        '';
    };

# Enable USB-specific packages
    environment.systemPackages = with pkgs; [
        usbutils
    ];
}
