{ pkgs, ... }:

{
    networking.hostName = "soc_workstation";

    networking.wireless.iwd = {
        enable = true;
        settings = {
            General = {
                EnableNetworkConfiguration = true;
            };
            Network = {
                EnableIPv6 = true;
            };
            Scan = {
                DisablePeriodicScan = true;
            };
        };
    };

# Configure network proxy if necessary
# networking.proxy.default = "http://user:password@proxy:port/";
# networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

    environment.systemPackages = with pkgs; [
        iwgtk
        impala
    ];
}
