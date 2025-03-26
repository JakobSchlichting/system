{ pkgs, ... }:

{
#TODO: - Employing a VPN (Virtual Private Network) to encrypt internet traffic.

#TODO: - Utilizing Encrypted DNS, with DNS over HTTPS (DoH) to encrypt communication with the DNS server and mask DNS traffic under HTTPS.
    # systemd.services.macchanger = {
        # enable = true;
        # description = "Change MAC address";
        # wantedBy = [ "multi-user.target" ];
        # after = [ "network.target" ];
        # serviceConfig = {
            # Type = "oneshot";
            # ExecStart = "${pkgs.macchanger}/bin/macchanger -r wlan0";
            # ExecStop = "${pkgs.macchanger}/bin/macchanger -p wlan0";
            # RemainAfterExit = true;
        # };
    # };
}
